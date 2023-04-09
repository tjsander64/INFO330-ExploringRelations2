-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
SELECT
customers.FirstName, customers.LastName, invoices.InvoiceId, invoices.InvoiceDate, invoices.BillingCountry
FROM customers, invoices
Where customers.CustomerID = invoices.CustomerId 
AND customers.Country = 'Brazil';