insert into menu_items
values(1, 'Sandwich', 99.00, 'Yes',  '2017-03-15', 'Main Course', 'Yes'),
(2, 'Burger', 129.00, 'Yes',  '2017-12-23', 'Main Course', 'No'),
(3, 'Pizza', 149.00, 'Yes',  '2017-08-21', 'Main Course', 'No'),
(4, 'French Fries', 57.00, 'No',  '2017-07-02', 'Starters', 'Yes'),
(5, 'Chocolate Brownie', 32.00, 'Yes',  '2022-11-02', 'Dessert', 'Yes');
      
select * from menu_items;
      
select menu_name,menu_price,menu_category,menu_free_deliery from menu_items
where menu_active in('Yes');

update menu_items
set menu_date = '2022-08-01'
where menu_name = 'Chocolate Brownie';

insert into user
values
(1, 'Sanchita Singh'),
(2, 'Raghav Kumar'),
(3, 'Sunny Thakkar'),
(4, 'Monica Verma'),
(5, 'Ayush Srivastav'),
(6, 'Rohit Gupta');

select menu_items.menu_id, menu_items.menu_price,menu_items.menu_free_delivery,user.user_name
from menu_items join cart
on menu_items.menu_id = cart.menu_id
join user
on user.user_id = cart.user_id
where menu_items.menu_name='Burger';