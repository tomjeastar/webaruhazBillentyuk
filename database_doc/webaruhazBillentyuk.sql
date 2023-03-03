CREATE DATABASE webshop2
	CHARACTER SET utf8
	COLLATE utf8_hungarian_ci;

#get http://localhost:3000/category
  select * from category;


#get http://localhost:3000/categoryABC
   select * from category
    order by name;