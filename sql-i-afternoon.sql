--  TABLE-PERSON -1: Create a table called person
    CREATE TABLE person (
    person_id SERIAL,
    name VARCHAR(200),
    age INTEGER,
    height INTEGER,
    city VARCHAR(200),
    favorite_color VARCHAR(200)
    );

--  TABLE-PERSON -2:Create a table called person
    INSERT INTO person (name, age, height, city, favorite_color) 
    VALUES
    ('Fethi', 25 , 175 , 'Istanbul', 'Green'),
    ('Anand', 22 , 150 , 'Indiana', 'red'),
    ('Carlos', 21 , 174 , 'Atlanta', 'Brown'),
    ('Gibss', 24 , 180 , 'Salt Lake City', 'White'),
    ('Edson', 23 , 170 , 'Rio', 'Gray');

--  TABLE-PERSON -3: List all the people in the person table by height from tallest to shortest
    SELECT * FROM person ORDER BY height DESC;

--  TABLE-PERSON -4: List all the people in the person table by height from shortest to tallest.
    SELECT * FROM person ORDER BY height ASC

--  TABLE-PERSON -5: List all the people in the person table by age from oldest to youngest.
    SELECT * FROM person ORDER BY age DESC

--  TABLE-PERSON -6: List all the people in the person table older than age 20.
    SELECT * FROM person WHERE age > 20

--  TABLE-PERSON -7:List all the people in the person table that are exactly 18.
    SELECT * FROM person WHERE age = 18


--  TABLE-PERSON -8: List all the people in the person table that are less than 20 and older than 30.
    SELECT * FROM person WHERE age NOT BETWEEN 20 AND 30

--  TABLE-PERSON -9: List all the people in the person table that are not 27 (Use not equals).
    SELECT * FROM person WHERE age != 27

--  TABLE-PERSON -10: List all the people in the person table where their favorite color is not red.
    SElECT * FROM person WHERE favorite_color != 'red'

--  TABLE-PERSON -11: List all the people in the person table where their favorite color is not red and is not blue.
    SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue'

--  TABLE-PERSON -12: List all the people in the person table where their favorite color is orange or green.
    SELECT * FROM person WHERE favorite_color = 'orange' AND favorite_color = 'green

--  TABLE-PERSON -13: List all the people in the person table where their favorite color is orange, green or blue (use IN)
    SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green', 'Blue') 

--  TABLE-PERSON -14: List all the people in the person table where their favorite color is yellow or purple (use IN).
    SELECT * FROM person WHERE favorite_color IN ('Yellow', 'Purple') 


    TABLE ORDER-1: Create a table called orders that records: person_id, product_name, product_price, quantity.

        CREATE TABLE records(
        person_id SERIAL,
        product_name VARCHAR(200),
        product_price INTEGER,
        quantity INTEGER
     
        )
    TABLE ORDER-2: Add 5 orders to the orders table.
                    Make orders for at least two different people.
                    person_id should be different for different people.

    INSERT INTO records (quantity, product_price, product_name)
    VALUES
    (200, 12, 'hammer'),
    (50, 30, 'nail'),
    (300, 90, 'drill'),
    (1000, 1, 'screw'),
    (300, 150, 'saw');
    
    TABLE ORDER-3: Select all the records from the orders table.
    select * from records

    TABLE ORDER-4: Calculate the total number of products ordered.
    SELECT SUM(quantity) FROM records;


    TABLE ORDER-5: Calculate the total order price.
    SELECT SUM(product_price) FROM records;

    TABLE ORDER-6:Calculate the total order price by a single person_id.
    SELECT SUM(product_price * quantity) FROM records WHERE person_id = 0;

    Table - artist

    1-)
        INSERT INTO artist (name, artist_id)
        VALUES 
        ('Fethi' , 276),
        ('Anand' , 277),
        ('Gibbs' , 278);

    2-) 
        select * from artist order by name desc limit 10;
    
    3-) 
        select * from artist order by name asc limit 5;
    4-)
        select * from artist where name like 'Black%'
    5-) 
        select * from artist where name like '%Black%'

    Table - employee

    1-) 
        select first_name, last_name from employee where city ='Calgary'
    2-) 
        SELECT MAX(birth_date) from employee; 
        or
        select birth_date from employee order by  birth_date desc limit 1
    3-) 
        SELECT MIN(birth_date) from employee;
    4-) 
        select * from employee where reports_to =2
    5-)
        SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';

    Table - invoice

    1-)
        SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';
    2-) 
        SELECT MAX(total) FROM invoice ;
    3-)
        SELECT MIN(total) FROM invoice ;
    4-)
        SELECT * FROM invoice where total > 5 ;
    5-)
        SELECT Count(*) FROM invoice where total < 5 ;
    6-)
        SELECT Count(*) FROM invoice where billing_state IN ('CA', 'TX', 'AZ') ;
    7-)
        select AVG(total) from invoice
    8-)
        select Sum(total) from invoice

