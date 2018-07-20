
CREATE TABLE PURCHASES AS
select
	count(case when customer_name = 'John Smith' then 1 end) johns_purchases,
	count(case when customer_name = 'David Kim' then 1 end) davids_purchases,
	count(case when customer_name = 'Mary Jane' then 1 end) marys_purchases
  from
	CUSTOMER_SALES_PRODUCTS_ABC;