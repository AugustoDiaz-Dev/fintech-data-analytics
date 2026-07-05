SELECT
    c.city,
    COUNT(DISTINCT c.customer_id) AS total_customers,
    ROUND(SUM(t.amount_usd), 2) AS total_transaction_volume,
    ROUND(AVG(t.amount_usd), 2) AS avg_transaction_amount
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY c.city
ORDER BY total_transaction_volume DESC
LIMIT 10;