SHOW DATABASES;


DELETE from credit.DATABASECHANGELOG
where id='add-delivery-dispatch-columns-to-invoice-history';
 
ALTER TABLE credit.invoice_history
DROP COLUMN delivery_date_time;
 
ALTER TABLE credit.invoice_history
DROP COLUMN estimated_dispatch_date;
