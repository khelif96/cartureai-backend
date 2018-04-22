insert into cars (model, doors, description,mpg,engine,horsepower) values ('Accord',4,"The best selling sedan from Honda", 30, '4 Cylinder Turbo', 192);
insert into manufacturers (name) values ('Honda');
insert into carManufacturers (car_id, manufacturer_id) values (1,1);

insert into cars (model, doors, description,mpg,engine,horsepower) values ('Ghost Series 2',4,"The best selling Rolls Royce", 20, 'Twin-turbocharged and intercooled DOHC 48-valve V-12', 563);
insert into manufacturers (name) values ('Rolls Royce');
insert into carManufacturers (car_id, manufacturer_id) values (3,2);

insert into cars (model, doors, description,mpg,engine,horsepower) values ('Camry',4,"The best selling Toyota", 32, 'V6', 301);
insert into manufacturers (name) values ('Toyota');
insert into carManufacturers (car_id, manufacturer_id) values (2,4);


insert into cars (model, doors, description,mpg,engine,horsepower) values ('Titan',2,"The best selling Nissan", 21, 'V8', 390);
insert into manufacturers (name) values ('Nissan');
insert into carManufacturers (car_id, manufacturer_id) values (4,5);


insert into cars (model, doors, description,mpg,engine,horsepower) values ('Suburban',4,"The best selling Chevrolet", 22, 'V8', 355);
insert into manufacturers (name) values ('Chevrolet');
insert into carManufacturers (car_id, manufacturer_id) values (5,6);

insert into types (type) values ('Compact Car');
insert into types (type) values ('Mid-Size Car');
insert into types (type) values ('Mid-Size Car');
insert into types (type) values ('Full-Size Truck');
insert into types (type) values ('Full-size SUV');


insert into carTypes (car_id, type_id) values (1,2);
insert into carTypes (car_id, type_id) values (2,3);
insert into carTypes (car_id, type_id) values (3,1);
insert into carTypes (car_id, type_id) values (4,4);
insert into carTypes (car_id, type_id) values (5,5);


insert into dealers (dealerName, dealerNumber,location) values ('Bay Ridge Honda',7188364600,'8801 4th Ave');
  insert into dealers (dealerName, dealerNumber,location) values ('Bay Ridge Toyota Sales',8555678901, '6401 6th Ave');

insert into carsForSale(car_id, dealer_id, price,leasePrice) values (1,1,23570,249);
  insert into carsForSale(car_id, dealer_id, price,leasePrice) values (1,1,22430,199);
