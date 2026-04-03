# AI-Powered SQL Agent with n8n & Supabase

## Transforming Natural Language into Data Insights

This project demonstrates an end-to-end AI-powered data querying system that converts natural language questions into executable SQL queries and retrieves insights from a cloud-hosted PostgreSQL database.

Built using n8n, Supabase, and modern LLM APIs, the system mimics real-world analytics workflows where business users interact with data without writing SQL.

---

## Key Highlights

* Convert natural language questions into SQL queries automatically
* Execute queries on a live PostgreSQL database hosted on Supabase
* Automate the entire pipeline using n8n workflows
* Handle schema-aware query generation
* Designed to simulate real-world business intelligence use cases

---

## Architecture

Natural Language Query
↓
AI Model (LLM)
↓
SQL Query Generation
↓
PostgreSQL Database (Supabase)
↓
Query Execution
↓
Result Returned to User

---

## Tech Stack

* **n8n** – Workflow automation engine
* **Supabase (PostgreSQL)** – Cloud database and data storage
* **SQL** – Querying and data manipulation
* **LLM APIs** – Gemini, OpenAI, Groq (tested across providers)

---

## Data Pipeline

* Imported structured datasets from CSV files into Supabase
* Designed relational tables for analytics
* Queried data using dynamically generated SQL
* Enabled automated interaction between AI and database

---

## Example Queries

Users can ask:

* What is the total number of customers?
* What is the total quantity sold?
* What are the sales for India in 2020?

The system dynamically converts these into SQL queries and executes them.

---

## Sample SQL (Generated)

```sql
SELECT COUNT(*) AS total_customers
FROM dim_customer;

SELECT SUM(fs.sold_quantity) AS india_sales
FROM fact_sales_monthly fs
JOIN dim_customer dc
  ON fs.customer_code = dc.customer_code
WHERE dc.market = 'India';
```

---

## Challenges & Solutions

**API Rate Limits**
Encountered limitations across free-tier AI providers.
Optimized prompt size and reduced schema complexity.

**Token Constraints**
Large schema inputs caused failures.
Solution: minimized schema scope for efficient queries.

**Tool Calling Limitations**
Some models struggled with structured function calls.
Tested multiple providers and optimized system prompts.

**Data Formatting Issues**
Handled text-based date fields using SQL transformations.

---

## Key Learnings

* Built a complete AI-to-database interaction pipeline
* Understood real-world limitations of LLM APIs
* Optimized prompt engineering for structured query generation
* Worked with Supabase as a scalable backend
* Designed workflows that simulate business analytics systems

---

## Project Structure

```
ai-sql-agent-n8n/
│── README.md
│── workflow.json
│── queries.sql
│── screenshots/
│   ├── workflow.png
│   ├── ai-agent.png
│   └── postgres.png
```

---

## Workflow

The full n8n workflow is included in `workflow.json`.

You can import this into n8n to replicate the system.

---

## Screenshots

![Workflow](screenshots/workflow.png)
![AI Agent](screenshots/ai-agent.png)
![Postgres](screenshots/postgres.png)

---

## Future Improvements

* Integrate production-grade LLM APIs with stable billing
* Improve accuracy for complex multi-table joins
* Add a frontend interface for business users
* Extend to real-time analytics dashboards

---

## Why This Project Matters

This project bridges the gap between AI and data analytics by enabling non-technical users to interact with databases using natural language.

It reflects a real-world shift toward AI-driven business intelligence systems.
