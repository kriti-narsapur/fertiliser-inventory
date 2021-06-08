with inventory as ( select * from orders.fct_inventory ),
land_application as ( select * from orders.fct_land_application ),
consumed_fertilisers as (
	select
		fertiliser_id,
		sum(consumed_quantity) as consumed_quantity
	from land_application
	group by 1
),
joined as (
	select
		fertiliser_id,
		consumed_quantity,
		total_quantity - consumed_quantity as available_quantity
	from inventory
	left join consumed_fertilisers using (fertiliser_id)
)
select * from joined


select * from orders.fct_land_application













--update orders.fct_inventory set store_id= (
-- floor(random()*(1010 - 1001+1)) + 1001)


--update orders.fct_land_application set event_date = (
--timestamp '2021-03-01 20:00:00' +
--       random() * (timestamp '2021-05-31 20:00:00' -
--                   timestamp '2021-03-01 10:00:00'))



--insert into orders.fct_inventory (fertiliser_id) select id from orders.fertiliser 




