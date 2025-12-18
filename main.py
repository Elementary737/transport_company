import mysql.connector
import time
import statistics
import os
from dotenv import load_dotenv
from pathlib import Path


# ---------- LOAD ENV ----------
env_path = Path(__file__).parent / ".env"
load_dotenv(dotenv_path=env_path)


# ---------- DB CONFIG FROM ENV ----------
DB_CONFIG = {
    "host": os.getenv("DB_HOST"),
    "user": os.getenv("DB_USER"),
    "password": os.getenv("DB_PASSWORD"),
    "database": os.getenv("DB_NAME"),
    "port": int(os.getenv("DB_PORT", "3306")),
    "use_pure": True
}


TEST_RUNS = 10      # кількість замірів
INNER_RUNS = 50     # повторень запиту в одному замірі


QUERIES = {
    "LIGHT_1_simple_select": """
        SELECT trip_id, trip_status, expenses
        FROM tripdetails;
    """,

    "LIGHT_2_where": """
        SELECT trip_id, trip_status
        FROM tripdetails
        WHERE trip_status = 'Completed';
    """,

    "MEDIUM_3_join": """
        SELECT td.trip_id, c.full_name_or_company, td.trip_status
        FROM tripdetails td
        JOIN orders o ON td.order_id = o.order_id
        JOIN client c ON o.client_id = c.client_id;
    """,

    "MEDIUM_4_join_where": """
        SELECT td.trip_id, c.full_name_or_company
        FROM tripdetails td
        JOIN orders o ON td.order_id = o.order_id
        JOIN client c ON o.client_id = c.client_id
        WHERE td.trip_status = 'In progress';
    """,

    "HEAVY_5_group_by": """
        SELECT c.client_type, AVG(td.expenses)
        FROM tripdetails td
        JOIN orders o ON td.order_id = o.order_id
        JOIN client c ON o.client_id = c.client_id
        GROUP BY c.client_type;
    """,

    "HEAVY_6_top_clients": """
        SELECT c.full_name_or_company, SUM(td.expenses) AS total_expenses
        FROM tripdetails td
        JOIN orders o ON td.order_id = o.order_id
        JOIN client c ON o.client_id = c.client_id
        GROUP BY c.client_id
        ORDER BY total_expenses DESC
        LIMIT 5;
    """,

    "HEAVY_7_nested_query": """
        SELECT
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
        );
    """
}


def execute_query(cursor, query):
    start = time.perf_counter()

    for _ in range(INNER_RUNS):
        cursor.execute(query)
        if cursor.with_rows:
            cursor.fetchall()

    end = time.perf_counter()
    return end - start


def main():
    conn = mysql.connector.connect(**DB_CONFIG)
    cursor = conn.cursor()

    print("Python database performance test\n")

    for name, query in QUERIES.items():
        times = []

        for _ in range(TEST_RUNS):
            t = execute_query(cursor, query)
            times.append(t)

        print(name)
        print(f"  avg: {statistics.mean(times):.6f} s")
        print(f"  min: {min(times):.6f} s")
        print(f"  max: {max(times):.6f} s\n")

    cursor.close()
    conn.close()


if __name__ == "__main__":
    main()
