-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT e.firstname, e.lastname, i.InvoiceID
FROM employees AS e, invoices AS i, customers
WHERE i.customerid = customers.customerid 
    AND customers.supportrepid = employeeid;