
create table auction(
	id INT PRIMARY KEY,
	price INT,
	brand VARCHAR (30),
	year INT,
	color VARCHAR (50),
	state VARCHAR (20),
	country VARCHAR (5),
	mileage FLOAT
);

create table brand(
	id INT PRIMARY KEY,
	brand VARCHAR (30)

);

create table sales(
	id INT PRIMARY KEY,
	brand VARCHAR (30),
	model VARCHAR (30),
	sales FLOAT,
	resale_value FLOAT,
	price_in_thousands FLOAT,
	engine_size FLOAT,
	horsepower FLOAT,
	wheelbase FLOAT,
	width FLOAT,
	length FLOAT,
	curb_weight FLOAT,
	fuel_capacity FLOAT,
	fuel_efficiency FLOAT
);

create table msrp(
	id INT PRIMARY KEY,
	brand VARCHAR (30),
	model VARCHAR (50),
	year INT,
	engine_fuel_type VARCHAR (50),
	engine_hp FLOAT,
	engine_cylinders FLOAT,
	transmission VARCHAR (30),
	wheels VARCHAR (30),
	doors FLOAT,
	category VARCHAR (100),
	size VARCHAR (30),
	style VARCHAR (30),
	hwy_mpg INT,
	city_mpg INT,
	popularity INT,
	MSRP FLOAT
);

'''Shows which brand made the most money across all years '''
SELECT brand, 
SUM (price) as p
FROM auction 
GROUP BY brand
ORDER BY p desc;

'''Find a car within your budget'''
select brand,
MIN (msrp) as m
FROM msrp
WHERE msrp.msrp >= 10000
GROUP BY brand
ORDER BY m asc;

