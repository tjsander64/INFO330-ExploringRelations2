-- What was the most purchased track of 2013?

SELECT trackid
,count(trackid) as num, tracks.name
FROM   invoice_items join invoices using (invoiceID, invoiceID)
    join tracks using(trackid, trackid)
where '2013-01-01' <= invoices.invoicedate < '2014-01-01'
group by trackid
order by num desc
limit 1;
