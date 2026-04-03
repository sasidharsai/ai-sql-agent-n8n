# AI-Powered SQL Agent using n8n

## Overview
This project demonstrates an AI-powered SQL querying workflow built using n8n, PostgreSQL, and Large Language Models.

The system allows users to ask natural language questions, converts them into SQL queries, and executes them on a PostgreSQL database to retrieve results.

## Features
- Natural language to SQL workflow
- PostgreSQL query execution
- Schema-based query handling
- Built using n8n automation

## Tech Stack
- n8n
- PostgreSQL
- SQL
- LLM APIs

## Workflow
User Question → AI Model → SQL Query Generation → PostgreSQL → Result

## Sample Questions
- What is the total number of customers?
- What is the total sold quantity?
- What is the sales quantity for India in 2020?

## Challenges Faced
- API quota and rate-limit issues
- Token limits with larger schema inputs
- Tool-calling instability in free-tier models

## Key Learnings
- Built an AI-to-SQL workflow with n8n
- Worked with PostgreSQL schema queries
- Optimized prompts and schema size for LLM workflows
- Debugged real-world API and model limitations
