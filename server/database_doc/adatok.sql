delete from category;
delete from products;
delete from users;


insert into users (id,firstName,lastName,gender,userName, email, password, number) VALUES
  (1,'Kov�cs','D�vid','Man','kovacsdavid324','kovacsdavid324@gmail.com','kovacsdavid123',0),
  (2,'Varga','Zsolt','Man','vargazsolt643','vargazsolt643@gmail.com','vargazsoltasd',0),
  (3,'Szab�','�va','Woman','szaboeva23','szaboeva23@gmail.com','szaboeva9999',0),
  (4,'Eszterh�zy','Ott�','Man','eszterhazyotto77','eszterhazyotto77@gmail.com','ottoeszterhazy333',0),
  (5,'Nagy','Ferenc','Man','nagyferenc634','ferencnagy5121@gmail.com','nagyferenc0',1),
  (6,'Szab�','Albert','Man','szaboalbert99','szaboalbert012@gmail.com','szaboalbert321',0),
  (7,'R�zm�ves','Ilona','Woman','rezmuvesilona4567','rezmuvesilona4567@gmail.com','rezmuvesilona432',0),
  (8,'Kov�cs','K�roly','Man','kovacskaroly111','kovacskaroly111@gmail.com','kovacskaroly623',1),
  (9,'Kiss','Zolt�n','Man','kisszoli1','kisszoltan1991@gmail.com','kisszoltan123',1),
  (10,'Ver�b','S�ndor','Man','verebsandor55','sandorvereb1986@gmail.com','verebsandor123',0),
  (11,'Szegedi','Imre','Man','szegediimre512','szegediimre1999@gmail.com','imreszegedi6000',0),
  (12,'Vasv�ri','Olga','Woman','vasvariolga152','vasvariolga863235@gmail.com','vasvariolga47',1),
  (13,'Szolnoki','Tam�s','Man','tamasszolnoki6','tamasszolnoki111@gmail.com','tamasszolnoki04',0),
  (14,'Heves','P�l','Man','palheves77','palheves123@gmail.com','hevespal000',0),
  (15,'Tasn�di','Alex','Man','alextasnadi612','alextasnadi47@gmail.com','tasnadialex123',1);


insert into products (id, name, price, quantity, categoryId) VALUES
  (1,'Redragon Kumara RGB', 110,70,1),
  (2,'Logitech G413',150,54,1),
  (3,'Genius Scorpion K215',30,40,2),
  (4,'Logitech K400 Plus',75,59,2),
  (5,'SPC Gear GK630K',90,62,1),
  (6,'Keychron K3',130,56,1),
  (7,'Tesoro Tizona Spectrum',70,47,1),
  (8,'White Shark Commandos',35,90,2),
  (9,'White Shark GK210',45,50,2),
  (10,'ASUS ROG Claymore II',220,50,1),
  (11,'Hama uRage Exodus 900',80,44,1),
  (12,'SteelSeries Apex 3 TKL',55,70,2),
  (13,'Razer BlackWidow V3 Tenkeyless',110,55,3),
  (14,'ASUS TUF Gaming K1',80,70,1),
  (15,'Razer Huntsman Mini',130,44,3),
  (16,'ASUS ROG Strix Scope',150,21,1),
  (17,'Logitech G PRO GX Clicky',140,18,1),
  (18,'Redragon Karura K502',25,60,2),
  (19,'Ducky One 2 SF',180,61,1),
  (20,'Redragon Mitra K551',50,40,2),
  (21,'Redragon Kumara 2 k552',45,20,1),
  (22,'Spirit Of Gamer Pro K5',25,54,2),
  (23,'HyperX Alloy Origins 60',130,60,1),
  (24,'Razer Cynosa Lite US',40,47,2),
  (25,'Hama uRage Illuminated 2',25,52,2),
  (26,'HyperX Origins Core',100,41,1),
  (27,'Cooler Master MK730',110,23,1),
  (28,'Corsair K60 RGB',145,12,1),
  (29,'Razer Pro Type US',180,40,3),
  (30,'SteelSeries Apex 7',200,30,1);


insert into category (id, name) VALUES
  (1,'Mechanical'),
  (2,'Membrane'),
  (3,'Razer Custom Switch')

select * from products;
select * from category;
select * from users;

#jelszó berakása

update users set password = '$2b$10$2MBPeVIq4W0PyW2eu.tHI.dO04Sp7Tj1fa0KsL4fAGRicaSvXu.wK';


#kosárba rakás

insert into basket (userId, productId, purchaseId, quantityId, date) values (1, 1 , 100, 5, now()), (1, 2 , 100, 5, now()), (1, 3 , 100, 5, now());
insert into basket (userId, productId, purchaseId, quantityId, date) values (2, 1 , 101, 5, now()), (2, 2 , 101, 5, now()), (2, 3 , 101, 5, now());
select * from basket;

delete from basket;