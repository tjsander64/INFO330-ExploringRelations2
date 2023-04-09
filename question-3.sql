-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT invoice_items.invoicelineid, tracks.name, tracks.composer 
FROM invoice_items, tracks 
WHERE invoice_items.trackid = tracks.trackid
ORDER BY invoice_items.invoicelineid ASC;