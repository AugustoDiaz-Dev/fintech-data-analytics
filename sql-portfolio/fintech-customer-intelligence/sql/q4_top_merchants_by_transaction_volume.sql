SELECT
    m.merchant_id,
    m.merchant_name,
    COUNT(t.transaction_id) AS total_transactions,
    ROUND(SUM(t.amount_usd), 2) AS total_transaction_volume,
    ROUND(AVG(t.amount_usd), 2) AS avg_transaction_amount
FROM merchants m
JOIN transactions t
    ON m.merchant_id = t.merchant_id
GROUP BY m.merchant_id, m.merchant_name
ORDER BY total_transaction_volume DESC
LIMIT 10;