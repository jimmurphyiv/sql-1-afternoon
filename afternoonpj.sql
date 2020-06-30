CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INTEGER,
    height INTEGER,
    city VARCHAR(100),
    favorite_color VARCHAR(100)
);

INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES
('Jim', 39, 181, 'Cincinnati', 'Green'),
('John', 31, 170, 'Cleveland', 'Orange'),
('Jill', 24, 160, 'Burgville', 'Purple'),
('Joan', 63, 163, 'Brownsville', 'Red'),
('Jaun', 33, 190, 'Newport', 'Blue');

SELECT * FROM person 
order by height DESC;
5	Jaun	33	190	Newport	    Blue
1	Jim	    39	181	Cincinnati	Green
2	John	31	170	Cleveland	Orange
4	Joan	63	163	Brownsville	Red
3	Jill	24	160	Burgville	Purple

SELECT * FROM person
order by height ASC;
3	Jill	24	160	Burgville	Purple
4	Joan	63	163	Brownsville	Red
2	John	31	170	Cleveland	Orange
1	Jim	    39	181	Cincinnati	Green
5	Jaun	33	190	Newport	    Blue

SELECT * FROM person 
order by age DESC;
4	Joan	63	163	Brownsville	Red
1	Jim	    39	181	Cincinnati	Green
5	Jaun	33	190	Newport	    Blue
2	John	31	170	Cleveland	Orange
3	Jill	24	160	Burgville	Purple

SELECT * FROM person 
Where age < 20;
1	Jim	    39	181	Cincinnati	Green
2	John	31	170	Cleveland	Orange
3	Jill	24	160	Burgville	Purple
4	Joan	63	163	Brownsville	Red
5	Jaun	33	190	Newport	    Blue

SELECT * FROM person 
where age = 18;
N/A lol

SELECT * FROM person 
where age < 20 or age > 30;
1	Jim	    39	181	Cincinnati	Green
2	John	31	170	Cleveland	Orange
4	Joan	63	163	Brownsville	Red
5	Jaun	33	190	Newport	    Blue

SELECT * FROM person 
where age != 27;
1	Jim	    39	181	Cincinnati	Green
2	John	31	170	Cleveland	Orange
3	Jill	24	160	Burgville	Purple
4	Joan	63	163	Brownsville	Red
5	Jaun	33	190	Newport	    Blue

SELECT * FROM person 
where favorite_color != 'Red';
1	Jim	    39	181	Cincinnati	Green
2	John	31	170	Cleveland	Orange
3	Jill	24	160	Burgville	Purple
5	Jaun	33	190	Newport	    Blue

SELECT * FROM person 
WHERE favorite_color != 'Red' 
and favorite_color !='Blue';
1	Jim	    39	181	Cincinnati	Green
2	John	31	170	Cleveland	Orange
3	Jill	24	160	Burgville	Purple

SELECT * FROM person 
WHERE favorite_color = 'Orange' 
or favorite_color ='Green';
1	Jim	    39	181	Cincinnati	Green
2	John	31	170	Cleveland	Orange

SELECT * FROM person 
where favorite_color
in ('Orange', 'Green', 'Blue');
1	Jim	    39	181	Cincinnati	Green
2	John	31	170	Cleveland	Orange
5	Jaun	33	190	Newport	    Blue

SELECT * FROM person 
where favorite_color
in ('Yellow', 'Purple');
3	Jill	24	160	Burgville	Purple

-- <<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id VARCHAR(100),
    product_name VARCHAR(100),
    product_price INTEGER,
    quanity INTEGER
);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
('TED', 'Shotgun', '150', '7'),
('Lance', 'Horse', '10000', '1'),
('Brenda', 'Hairdryer', '80', '2'),
('Reed', 'Recliner', '450', '3'),
('Tonya', 'Lawn Chair', '49', '5');

SELECT * FROM orders;
1	TED	    Shotgun	    150	7
2	Lance	Horse	  10000	1
3	Brenda	Hairdryer	80	2
4	Reed	Recliner	450	3
5	Tonya	Lawn Chair	49	5

SELECT sum(quantity) FROM orders;
18

SELECT sum(product_price) FROM orders;
10729

SELECT sum(product_price * quanity) FROM orders
WHERE person_id = 'TED';
1050

