select 
    order_key,
    sum(extended_price) as gross_item_sales_amount,
    sum(DISCOUNT_AMOUNT) as item_discount_amount
from
    {{ ref('int_order_items') }}
group by
    order_key
