/*
customer sales
*/
create table CUSTOMER_SALES as
SELECT
    A.CUSTOMER_ID,
    A.NAME,
    A.SALE_ID,
    A.PRODUCT_ID
FROM
    (
        SELECT
            C_TBL.CUSTOMER_ID,
            C_TBL.NAME,
            S_TBL.SALE_ID,
            S_TBL.PRODUCT_ID
        FROM
            CUSTOMERS AS C_TBL
        INNER JOIN
            SALES AS S_TBL
        ON
            C_TBL.CUSTOMER_ID=S_TBL.CUSTOMER_ID
    )
AS A;

--named sales
CREATE TABLE CUSTOMER_NAMED_SALES AS
    SELECT * FROM
	    (SELECT
	        CUSTOMER_ID,
	        INITCAP(LOWER(NAME)) AS CUSTOMER_NAME,
	        SALE_ID,
	        PRODUCT_ID
	    FROM
	        CUSTOMER_SALES)
    AS INNER_TABLE;