SELECT
    DATE_TRUNC('month', t.transaction_date) AS month,
    COUNT(t.transaction_id) AS total_transactions,
    ROUND(SUM(t.amount_usd), 2) AS total_transaction_volume,
    ROUND(AVG(t.amount_usd), 2) AS avg_transaction_amount
FROM transactions t
GROUP BY month
ORDER BY month;