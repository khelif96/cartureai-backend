CREATE TABLE cars (
  model VARCHAR(255) NOT NULL,
  doors int,
  description TEXT,
  mpg int,
  engine varchar(255),
  horsepower int,
  car_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY


);

CREATE TABLE manufacturers (
  name VARCHAR(255) NOT NULL,
  manufacturer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE types (
  type VARCHAR(255),
  type_id int not null AUTO_INCREMENT primary key
);

create table carManufacturers (
  car_id int not null,
  manufacturer_id int not NULL,
  foreign key (car_id) REFERENCES cars(car_id),
  foreign key (manufacturer_id) REFERENCES manufacturers(manufacturer_id)



);

create table carTypes (
  car_id int,
  type_id int,
  foreign key (car_id) REFERENCES cars(car_id),
  foreign key (type_id) REFERENCES types(type_id)

);

create table dealers (
  dealerName varchar(255) not null,
  dealerNumber int,
  location text,
  dealer_id int not null auto_increment primary key
);

create view V_carManufacturers
  as
  select
  cm.car_id as 'carManufacturer_id',
  m.name as 'Manufacturer',
  c.model as 'Model'

  from cars c
  inner join carManufacturers cm on cm.car_id = c.car_id
  inner join manufacturers m on m.manufacturer_id = cm.manufacturer_id;


  create table carsForSale(
    car_id int,
    dealer_id int,
    price int,
    leasePrice int,
    foreign key (car_id) REFERENCES cars(car_id),
    foreign key (dealer_id) REFERENCES dealers(dealer_id)
  )

  create view V_carsForSale
    as
    select
    cfs.price as 'price',
    cfs.leasePrice as 'leasePrice',
    c.model as 'carName',
    d.name as 'dealerName'
    from carsForSale cfs
    inner join cars c on cfs.car_id = c.car_id
    inner join dealers d on cfs.dealer_id = d.dealer_id;
