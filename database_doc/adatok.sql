delete from category;
delete from products;
delete from users;


insert into users (id,firstName,lastName,gender,userName, email, password, number) VALUES
  (1,'Kovács','Dávid','Man','kovacsdavid324','kovacsdavid324@gmail.com','kovacsdavid123',06204647521),
  (2,'Varga','Zsolt','Man','vargazsolt643','vargazsolt643@gmail.com','vargazsoltasd',06705232762),
  (3,'Szabó','Éva','Woman','szaboeva23','szaboeva23@gmail.com','szaboeva9999',06207223276),
  (4,'Eszterházy','Ottó','Man','eszterhazyotto77','eszterhazyotto77@gmail.com','ottoeszterhazy333',06301166312);

insert into products (id, name, price, quantity, categoryId) VALUES
  (1,'Redragon Kumara RGB', 110,70,1),
  (2,'Logitech G413',150,54,1),
  (3,'Genius Scorpion K215',30,40,2),
  (4,'Logitech K400 Plus',75,59,2),
  (5,'SPC Gear GK630K',90,62,1);

insert into category (id, name) VALUES
  (1,'Mechanical'),
  (2,'Membrane');

select * from products;
select * from category;
select * from users;


