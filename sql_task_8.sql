
select * from customer

select * from orders

select * from orders order by qty desc

select cusine,dish,
         case when qty=4 then 'popular'
		 when qty=3 then 'less popular'
	     else 'no one iterested'
	     end as popular_dish
	 from orders
				   

select distinct dish, cusine from orders

CREATE OR REPLACE FUNCTION insert_dish(dish text)
RETURNS void AS $$
DECLARE
    cusine text;
BEGIN
    
    IF dish = 'Biryani' THEN
        cusine := 'Indian';
    ELSIF dish = 'Sushi' THEN
        cusine := 'Japanese';
    ELSIF dish = 'Tacos' THEN
        cusine := 'Mexican';
    ELSE
        cusine:= 'Unknown';
    END IF;

	end;
$$ language plpgsql;	

SELECT insert_dish('Biryani');


	

