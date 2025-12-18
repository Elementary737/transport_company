package main

import (
	"database/sql"
	"fmt"
	"log"
	"os"
	"time"

	_ "github.com/go-sql-driver/mysql"
	"github.com/joho/godotenv"
)

const (
	TEST_RUNS  = 10
	INNER_RUNS = 50
)

type QueryTest struct {
	name  string
	query string
}

var queries = []QueryTest{
	{
		"LIGHT_1_simple_select",
		`SELECT trip_id, trip_status, expenses
		 FROM tripdetails;`,
	},
	{
		"LIGHT_2_where",
		`SELECT trip_id, trip_status
		 FROM tripdetails
		 WHERE trip_status = 'Completed';`,
	},
	{
		"MEDIUM_3_join",
		`SELECT td.trip_id, c.full_name_or_company, td.trip_status
		 FROM tripdetails td
		 JOIN orders o ON td.order_id = o.order_id
		 JOIN client c ON o.client_id = c.client_id;`,
	},
	{
		"MEDIUM_4_join_where",
		`SELECT td.trip_id, c.full_name_or_company
		 FROM tripdetails td
		 JOIN orders o ON td.order_id = o.order_id
		 JOIN client c ON o.client_id = c.client_id
		 WHERE td.trip_status = 'In progress';`,
	},
	{
		"HEAVY_5_group_by",
		`SELECT c.client_type, AVG(td.expenses)
		 FROM tripdetails td
		 JOIN orders o ON td.order_id = o.order_id
		 JOIN client c ON o.client_id = c.client_id
		 GROUP BY c.client_type;`,
	},
	{
		"HEAVY_6_top_clients",
		`SELECT c.full_name_or_company, SUM(td.expenses) AS total_expenses
		 FROM tripdetails td
		 JOIN orders o ON td.order_id = o.order_id
		 JOIN client c ON o.client_id = c.client_id
		 GROUP BY c.client_id
		 ORDER BY total_expenses DESC
		 LIMIT 5;`,
	},
	{
		"HEAVY_7_nested_query",
		`SELECT
		     td.trip_id,
		     c.full_name_or_company,
		     d.full_name,
		     v.registration_number,
		     td.trip_status,
		     td.expenses
		 FROM tripdetails td
		 JOIN orders o ON td.order_id = o.order_id
		 JOIN client c ON o.client_id = c.client_id
		 LEFT JOIN driver d ON td.driver_id = d.driver_id
		 LEFT JOIN vehicle v ON td.vehicle_id = v.vehicle_id
		 WHERE td.expenses > (
		     SELECT AVG(expenses) FROM tripdetails
		 );`,
	},
}

func runQuery(db *sql.DB, query string) time.Duration {
	start := time.Now()

	for i := 0; i < INNER_RUNS; i++ {
		rows, err := db.Query(query)
		if err == nil {
			for rows.Next() {
			}
			rows.Close()
		}
	}

	return time.Since(start)
}

func main() {
	err := godotenv.Load()
	if err != nil {
		log.Fatal(err)
	}

	dbUser := os.Getenv("DB_USER")
	dbPassword := os.Getenv("DB_PASSWORD")
	dbName := os.Getenv("DB_NAME")
	dbHost := os.Getenv("DB_HOST")
	dbPort := os.Getenv("DB_PORT")

	dsn := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s",
		dbUser, dbPassword, dbHost, dbPort, dbName)

	db, err := sql.Open("mysql", dsn)
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	fmt.Println("Go database performance test\n")

	for _, q := range queries {
		var times []time.Duration

		for i := 0; i < TEST_RUNS; i++ {
			t := runQuery(db, q.query)
			times = append(times, t)
		}

		min, max := times[0], times[0]
		var total time.Duration

		for _, t := range times {
			total += t
			if t < min {
				min = t
			}
			if t > max {
				max = t
			}
		}

		avg := total / time.Duration(len(times))

		fmt.Println(q.name)
		fmt.Printf("  avg: %.6f s\n", avg.Seconds())
		fmt.Printf("  min: %.6f s\n", min.Seconds())
		fmt.Printf("  max: %.6f s\n\n", max.Seconds())
	}
}
