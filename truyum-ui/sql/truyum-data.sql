/* 1. View Menu Item List Admin (TYUC001)*/

insert into menu_items
values(1, 'Sandwich', 99.00, 'Yes',  '2017-03-15', 'Main Course', 'Yes'),
(2, 'Burger', 129.00, 'Yes',  '2017-12-23', 'Main Course', 'No'),
(3, 'Pizza', 149.00, 'Yes',  '2017-08-21', 'Main Course', 'No'),
(4, 'French Fries', 57.00, 'No',  '2017-07-02', 'Starters', 'Yes'),
(5, 'Chocolate Brownie', 32.00, 'Yes',  '2022-11-02', 'Dessert', 'Yes');

select * from menu_items;

/* 2. View Menu Item List Customer (TYUC002)*/

select * from menu_items
where menu_Active="Yes" AND menu_date<= trunc(current_date);

/* 3. Edit Menu Item (TYUC003) */
select * from menu_items 
where menu_id = "1";

update menu_item 
set menu_name='Noodles',
menu_price=10.0,me_category='Starters'
where menu_id=2;


/* 4. Add to Cart (TYUC004) */
insert into user
values
(1, 'Tejasvik'),
(2, 'Koustav Das');

insert into cart
values (1,1),
(1,2),(1,3);


/* 5. View Cart (TYUC005) */

select m.menu_name, m.menu_free_delivery, m.menu_price, m.menu_category
from menu_item m
inner join cart c on m.menu_id = c.menu_id
where c.user_id = 1; 


select sum(m.menu_price) as Total from menu_item m
inner join cart c on m.menu_id = c.menu_id
where c.user_id = 1; 

 /* 6. Remove Item from Cart (TYUC006) */

delete from cart where user_id=1 and menu_id=2; 




