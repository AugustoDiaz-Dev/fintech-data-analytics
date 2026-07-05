SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.city,
    c.credit_score,
    COUNT(t.transaction_id) AS total_transactions,
    ROUND(SUM(t.amount_usd), 2) AS total_transaction_volume,
    ROUND(AVG(t.amount_usd), 2) AS avg_transaction_amount
FROM transactions t
JOIN accounts a
    ON t.account_id = a.account_id
JOIN customers c
    ON a.customer_id = c.customer_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name,
    c.city,
    c.credit_score
ORDER BY total_transaction_volume DESC
LIMIT 10;