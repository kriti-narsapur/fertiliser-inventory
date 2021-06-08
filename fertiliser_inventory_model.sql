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












--with appl as (
--	select 
--		plan_id,
--		application_id,
--		activated_crash_at, 
--		activated_rum_at, 
--		activated_apm_at,
--		deleted_at,
--		purge_state,
--		case when deleted_at is not null or purge_state is not null then true else false end as has_removed
--	from core.dim_application
--	left join core.dim_plan using (plan_id)
--	where not is_test_account
--),
--
--dates as (
--	select
--		plan_id,
--		count(application_id) filter (where not has_removed) as available_apps
--	from appl
--	group by 1
--)
--select * from appl
--where plan_id=2132617508
