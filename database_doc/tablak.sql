Create table termekek (
	id int not null AUTO_INCREMENT PRIMARY key,
    megnevezes varchar(40) not null UNIQUE,
    ar numeric(10,0),
  darab numeric(10,0)
);

