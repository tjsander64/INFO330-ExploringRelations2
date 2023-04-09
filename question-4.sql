-- Which sales agent made the most in sales in 2010?

SELECT Count(*) as num_invoices, firstname, lastname
from (SELECT e.firstname, e.lastname, i.InvoiceID
    FROM employees AS e, invoices AS i, customers
    WHERE i.customerid = customers.customerid 
        AND customers.supportrepid = employeeid
        AND '2010-01-01' <= i.invoicedate < '2011-01-01')
group by firstname
order by num_invoices desc
limit 1;