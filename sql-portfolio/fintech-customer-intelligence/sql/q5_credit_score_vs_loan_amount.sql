SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.credit_score,
    l.loan_amount,
    l.interest_rate
FROM customers c
JOIN loans l
    ON c.customer_id = l.customer_id;