package main

import (
	"database/sql"
	"fmt"
	"os"
	"time"

	_ "github.com/go-sql-driver/mysql"
	"github.com/joho/godotenv"
)

func main() {
	// Load .env
	err := godotenv.Load()
	if err != nil {
		panic("Error loading .env file")
	}

	dbHost := os.Getenv("DB_HOST")
	dbUser := os.Getenv("DB_USER")
	dbPassword := os.Getenv("DB_PASSWORD")
	dbName := os.Getenv("DB_NAME")
	dbPort := os.Getenv("DB_PORT")

	fmt.Println("DB_HOST =", dbHost)
	fmt.Println("DB_USER =", dbUser)
	fmt.Println("DB_NAME =", dbName)

	dsn := fmt.Sprintf(
		"%s:%s@tcp(%s:%s)/%s",
		dbUser,
		dbPassword,
		dbHost,
		dbPort,
		dbName,
	)

	db, err := sql.Open("mysql", dsn)
	if err != nil {
		panic(err)
	}
	defer db.Close()

	if err := db.Ping(); err != nil {
		panic(err)
	}

	fmt.Println("\nGo DB performance test\n")

	queries := map[string]string{
		"LIGHT_1_simple_select": `
			SELECT * FROM Client;
		`,
		"MEDIUM_1_join": `
			SELECT c.full_name_or_company, o.route_description
			FROM Client c
			JOIN Orders o ON c.client_id = o.client_id;
		`,
		"MEDIUM_2_join_where": `
			SELECT d.full_name, td.trip_status
			FROM Driver d
			JOIN TripDetails td ON d.driver_id = td.driver_id
			WHERE td.trip_status = 'completed';
		`,
		"HEAVY_1_group_by": `
			SELECT d.full_name, COUNT(td.trip_id) AS trips_count
			FROM Driver d
			JOIN TripDetails td ON d.driver_id = td.driver_id
			GROUP BY d.full_name;
		`,
		"HEAVY_2_nested_query": `
			SELECT full_name_or_company
			FROM Client
			WHERE client_id IN (
				SELECT client_id
				FROM Orders
				GROUP BY client_id
				HAVING COUNT(order_id) > 1
			);
		`,
	}

	for name, query := range queries {
		var times []time.Duration

		for i := 0; i < 5; i++ {
			start := time.Now()

			rows, err := db.Query(query)
			if err != nil {
				panic(err)
			}
			for rows.Next() {
			}
			rows.Close()

			times = append(times, time.Since(start))
		}

		var sum time.Duration
		min := times[0]
		max := times[0]

		for _, t := range times {
			sum += t
			if t < min {
				min = t
			}
			if t > max {
				max = t
			}
		}

		avg := sum / time.Duration(len(times))

		fmt.Println(name)
		fmt.Printf("  avg: %v\n", avg)
		fmt.Printf("  min: %v\n", min)
		fmt.Printf("  max: %v\n\n", max)
	}
}
