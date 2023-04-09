-- What was the most purchased track of 2013?

SELECT COUNT(*) as num_purchases, track_name
FROM (SELECT t.trackid, t.name as track_name, i.invoicelineid
    from tracks as t, invoice_items as i, invoices 
    where i.trackid = t.trackid
        and i.invoiceid = invoices.invoiceid
        and  '2013-01-01' <= invoices.invoicedate < '2013-01-01')
GROUP BY track_name
ORDER BY num_purchases
LIMIT 1;




SELECT trackid
,count(trackid) as num, tracks.name
FROM   invoice_items join invoices using (invoiceID, invoiceID)
    join tracks using(trackid, trackid)
where '2013-01-01' <= invoices.invoicedate < '2014-01-01'
group by trackid
order by num desc
limit 100;

with bullshit AS (
    SELECT count(trackid) cnt, trackid 
    FROM invoice_items
    GROUP BY trackid
)
SELECT max(cnt)
FROM bullshit 