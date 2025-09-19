-- Monthly sales by customer (example)
SELECT customer_id, TO_CHAR(invoice_date,'YYYY-MM') month, SUM(total_amount) total_sales
FROM invoices
GROUP BY customer_id, TO_CHAR(invoice_date,'YYYY-MM')
ORDER BY month, customer_id;
