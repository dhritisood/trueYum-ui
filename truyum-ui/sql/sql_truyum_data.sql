insert into menu_items
values(1, 'Sandwich', 99.00, 'Yes',  '2017-03-15', 'Main Course', 'Yes'),
(2, 'Burger', 129.00, 'Yes',  '2017-12-23', 'Main Course', 'No'),
(3, 'Pizza', 149.00, 'Yes',  '2017-08-21', 'Main Course', 'No'),
(4, 'French Fries', 57.00, 'No',  '2017-07-02', 'Starters', 'Yes'),
(5, 'Chocolate Brownie', 32.00, 'Yes',  '2022-11-02', 'Dessert', 'Yes');
      
select * from menu_items;

/* View Menu Item -Customer*/

select * from menu_items
where menu_Active="Yes" AND menu_date<= trunc(current_date);

/* Edit Menu Item */
select * from menu_items 
where menu_id = '4';

update menu_item 
set menu_name='Pasta',
menu_price= 125.00,menu_category='Starters'
where menu_id=2;

/* Add to Cart */
insert into user
values
(1, 'Bhavna Meghani'),
(2, 'Rohit Gupta');

insert into cart
values (1,1),
(1,2),(1,3);

/* View Cart */

select menu_items.menu_name, menu_items.menu_free_delivery, menu_items.menu_price, menu_items.menu_category
from menu_items inner join cart 
on menu_items.menu_id = cart.menu_id
where cart.user_id = '1'; 


select sum(menu_items.menu_price) as Total from menu_item
inner join cart on menu_items.menu_id = cart.menu_id
where cart.user_id = '2'; 

 /* Remove Item from Cart */

delete from cart where user_id='1' and menu_id='2'; 
