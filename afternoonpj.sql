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

-- <<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>

INSERT INTO artist
(name, artist_id)
VALUES
('Bloodhound Gang', '504'),
('Nakho and Medicine for the People', '808');

SELECT * FROM artist 
order by name DESC LIMIT 10;
155	Zeca Pagodinho
212	Yo-Yo Ma
168	Youssou N'Dour'
255	Yehudi Menuhin
181	Xis
211	Wilhelm Kempff
154	Whitesnake
75	Vinicius, Toquinho & Quarteto Em Cy
73	Vinícius E Qurteto Em Cy
74	Vinícius E Odette Lara

SELECT * FROM artist 
order by name ASC LIMIT 5;
230	Aaron Copland & London Symphony Orchestra
202	Aaron Goldberg
215	Academy of St. Martin in the Fields Chamber Ensemble & Sir Neville Marriner
222	Academy of St. Martin in the Fields, John Birch, Sir Neville Marriner & Sylvia McNair
214	Academy of St. Martin in the Fields & Sir Neville Marriner

SELECT * FROM artist
WHERE name LIKE 'Black%';
11	Black Label Society
12	Black Sabbath
169	Black Eyed Peas

SELECT * FROM artist
WHERE name LIKE '%Black%';
11	Black Label Society
12	Black Sabbath
38	Banda Black Rio
137	The Black Crowes
169	Black Eyed Peas

-- <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>

SELECT first_name, last_name FROM employee
WHERE  city = 'Calgary';
Nancy	Edwards
Jane	Peacock
Margaret	Park
Steve	Johnson
Michael	Mitchell

SELECT max(birth_date) FROM employee;
1973-08-29T00:00:00.000Z

SELECT min(birth_date) FROM employee;
1947-09-19T00:00:00.000Z

SELECT * FROM employee
where reports_to = 2;
3	Peacock	Jane	Sales Support Agent	2
4	Park	Margaret	Sales Support Agent	2
5	Johnson	Steve	Sales Support Agent	2

SELECT count(*) FROM employee
WHERE  city = 'Lethbridge';
2

-- <<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>


SELECT count(*) FROM invoice 
WHERE billing_country = 'USA';
91

SELECT max(total) FROM invoice;
26

SELECT min(total) FROM invoice;
1

SELECT * FROM invoice 
WHERE total > 5;
"there are 179 results for this don't need to put that in here :)"

SELECT * FROM invoice 
WHERE total < 5;
"there are 233 results for this don't need to put that in here :)"

SELECT count(*) FROM invoice 
WHERE billing_state in ('CA', 'TX', 'AZ');
35

SELECT avg(total) FROM invoice;
5.7063106796116505

SELECT sum(total) FROM invoice;
2351

