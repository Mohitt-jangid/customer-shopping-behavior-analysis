
SELECT * FROM customer_shopping_data ;

/* total revenue by the gender */
 select gender , sum("purchase_amount_(usd)")
 from customer_shopping_data 
 group by gender ;


/* which customer used a discount but still  spend more then the average purchase amount */
select customer_id , sum("purchase_amount_(usd)")/count(*) as average_purchase_amount
from customer_shopping_data
where "purchase_amount_(usd)" > (select sum("purchase_amount_(usd)")/count(*) from customer_shopping_data)
and discount_applied = 'Yes'
group by customer_id ;


/* top 5 products with the highest average rating */ 

select item_purchased, avg(review_rating) as average_rating
from customer_shopping_data
group by item_purchased
order by average_rating desc
offset 0 rows fetch next 5 rows only;


/* average purchase amount by the standard and express shipping */  

select shipping_type , avg("purchase_amount_(usd)") as average_purchase_amount
from customer_shopping_data
where shipping_type = 'Express' or shipping_type = 'Standard' 
group by shipping_type ;


/* compare the average purchase amount and total revenue by subscription status */

select subscription_status ,
round(avg("purchase_amount_(usd)":: Int),2) as average_purchase_amount,
sum("purchase_amount_(usd)") as total_revenue
from customer_shopping_data
group by subscription_status ; 


/*Which 5 products have the highest percentage of purchases with discounts applied? */

select item_purchased,
round(100*sum(
CASE 
    when discount_applied = 'Yes' then 1 else 0
    end)/count(*),2)AS Discount_Percentage

from customer_shopping_data
group by item_purchased
 
/* Segment customers into New, Returning, and Loyal based on their total number of previous purchases, and show the count of each segment.*/ 
select customer_id,
previous_purchases,
CASE 
    when previous_purchases = 0 then 'First Time Buyer'
    when previous_purchases BETWEEN 1 AND 10 then 'Repeat Buyer'
    else 'loyal Customer' END As customer_type
from customer_shopping_data

/* What are the top 3 most purchased products within each category? */
WITH ProductRanking AS
(
    SELECT
        Category,
        Item_Purchased,
        COUNT(*) AS Total_Purchases,
        ROW_NUMBER() OVER (
            PARTITION BY Category
            ORDER BY COUNT(*) DESC
        ) AS rn
    FROM customer_shopping_data
    GROUP BY Category, Item_Purchased
)

SELECT
    Category,
    Item_Purchased,
    Total_Purchases
FROM ProductRanking
WHERE rn <= 3
ORDER BY Category, rn;

/* Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe? */ 
SELECT subscription_status , count(*) as total_customers
from customer_shopping_data
where previous_purchases > 5 
group by subscription_status ;

-- Payment Method Distribution for Above-Average Purchases
with table1 as (select * from customer_shopping_data 
where "purchase_amount_(usd)" > (select avg("purchase_amount_(usd)") from customer_shopping_data))
select payment_method,count(*)  from table1
group by payment_method
order by count(*) desc;
