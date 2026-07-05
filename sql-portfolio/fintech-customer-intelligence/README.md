# Fintech Customer Intelligence with SQL

## Project Overview

Using a Synthetic Banking dataset, I analyzed customer behavior, account activity, transaction patterns, merchant performance, and lending activity through SQL.

The goal was to answer business questions and generate actionable insights.

## Business Questions

### Customer Analytics

* Who are the most valuable customers based on transaction volume?  
  → [View analysis](q1_customers_by_transaction_volume.md)

* Which cities generate the highest customer value?  
  → [View analysis](q2_customer_value_by_city.md)

---

### Transaction Analytics

* How does transaction activity evolve over time?  
  → [View analysis](q3_transaction_activity_over_time.md)

---

### Merchant Analytics

* Which merchants receive the highest transaction volume?  
  → [View analysis](q4_top_merchants_by_transaction_volume.md)

---

### Lending Analytics

* Is there a relationship between credit score and loan size?  
  → [View analysis](q5_credit_score_vs_loan_amount.md)

## Tools Used

* PostgreSQL
* SQL
* Google Sheets
* Git
* GitHub
* Antigravity (Google)

## Database Schema

```text
customers
│
├── customer_id (PK)
├── first_name
├── last_name
├── email
├── city
├── credit_score
└── created_at

accounts
│
├── account_id (PK)
├── customer_id (FK)
├── account_type
├── balance_usd
└── open_date

transactions
│
├── transaction_id (PK)
├── account_id (FK)
├── merchant_id (FK)
├── amount_usd
└── transaction_date

merchants
│
├── merchant_id (PK)
├── merchant_name
└── city

loans
│
├── loan_id (PK)
├── customer_id (FK)
├── loan_amount
├── interest_rate
└── start_date

cards
│
├── card_id (PK)
├── account_id (FK)
├── card_type
└── expiration_date
```

## Entity Relationship Diagram

```text
customers
    │
    ├──────────────┐
    │              │
    ▼              ▼
accounts         loans
    │
    ▼
transactions
    │
    ▼
merchants

accounts
    │
    ▼
cards
```

## Key Takeaway

This project demonstrates how SQL can be used to transform raw banking data into meaningful business insights. Rather than focusing solely on query writing, the analysis emphasizes decision-making, customer intelligence, transaction monitoring, and fintech-oriented analytics.
