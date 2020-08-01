insert into menu_items values(
('Sandwich','99','Yes','15/03/2017','Main Course','Yes'),
('Burger','129','Yes','23/12/2017','Main Course','No'),
('Pizza','149','Yes','21/08/2017','Main Course','No'),
('French Fries','57','No','02/07/2017','Starters','Yes'),
('Chocolate Brownie','32','Yes','02/11/2022','Dessert','Yes')
)
select * from menu_items;/*Select statement to view all menu items*/

update table menu_items set Name_user='Noodles',price='109',
active_1='Yes',date_of_launch='20/09/2019',category='Main Course',
Free_delivery='Yes' where m_id='5';/*Update an item*/

insert into user_1,cart(Name_user,price,
active_1,date_of_launch,category,
Free_delivery) select(Name_user,price,
active_1,date_of_launch,category,
Free_delivery) from menu_items;/*Insert items into user & cart*/

select * from cart;/*Select all cart items*/

delete from cart where c_id='1';/*Delete cart items for user ID =1*/
