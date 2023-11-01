Show databases;

Create database Business;

drop database Business use Business;

drop table Customers;

use Business;

CREATE TABLE Customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(200) NOT NULL,
    phone VARCHAR(200) NOT NULL
);

use Business;

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date VARCHAR(100) NOT NULL,
    price VARCHAR(100) NOT NULL,
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);

use Business;

INSERT INTO
    Customers (first_name, last_name, email, phone)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '4567890'),
    (
        'Jane',
        'Smith',
        'jane.smith@example.com',
        '6543210'
    ),
    (
        'Robert',
        'Johnson',
        'robert.j@example.com',
        '5555555'
    ),
    (
        'Mary',
        'Wilson',
        'mary.w@example.com',
        '8888888'
    ),
    (
        'David',
        'Brown',
        'david.b@example.com',
        '7777777'
    ),
    (
        'Sarah',
        'Williams',
        'sarah.w@example.com',
        '1234567'
    ),
    (
        'Michael',
        'Anderson',
        'michael.a@example.com',
        '9876543'
    ),
    (
        'Emily',
        'Taylor',
        'emily.t@example.com',
        '2223333'
    ),
    (
        'Christopher',
        'Lee',
        'chris.l@example.com',
        '8887777'
    ),
    (
        'Laura',
        'Harris',
        'laura.h@example.com',
        '4443333'
    ),
    (
        'Daniel',
        'Martin',
        'daniel.m@example.com',
        '5553333'
    ),
    (
        'Jessica',
        'Wilson',
        'jessica.w@example.com',
        '3331111'
    ),
    (
        'William',
        'White',
        'william.w@example.com',
        '9998888'
    ),
    (
        'Amanda',
        'Clark',
        'amanda.c@example.com',
        '7779999'
    ),
    (
        'Matthew',
        'Thomas',
        'matthew.t@example.com',
        '6662222'
    ),
    (
        'Elizabeth',
        'Brown',
        'elizabeth.b@example.com',
        '9337777'
    ),
    (
        'James',
        'Hall',
        'james.h@example.com',
        '2444666'
    ),
    (
        'Ashley',
        'Moore',
        'ashley.m@example.com',
        '1115555'
    ),
    (
        'John',
        'Taylor',
        'john.t@example.com',
        '3221111'
    );

use Business;

select
    *
from
    Customers;

-- Insert orders data
use Business;

INSERT INTO
    orders (date, price, customer_id)
VALUES
    ('2023-10-01', '150.00', 1),
    ('2023-10-02', '200.00', 2),
    ('2023-10-03', '75.50', 3),
    ('2023-10-04', '120.00', 4),
    ('2023-10-05', '85.25', 5),
    ('2023-10-06', '110.00', 6),
    ('2023-10-07', '250.75', 7),
    ('2023-10-08', '95.00', 8),
    ('2023-10-09', '180.50', 9),
    ('2023-10-10', '135.00', 10),
    ('2023-10-11', '175.25', 11),
    ('2023-10-12', '70.00', 12),
    ('2023-10-13', '130.75', 13),
    ('2023-10-14', '110.00', 14),
    ('2023-10-15', '220.50', 15),
    ('2023-10-16', '160.00', 16),
    ('2023-10-17', '195.25', 17),
    ('2023-10-18', '95.00', 18),
    ('2023-10-19', '75.50', 19),
    ('2023-10-20', '200.00', 19);

use Business;

select
    *
from
    orders;

use Business;

select
    *
from
    Customers
    join orders on Customers.id = orders.customer_id use Business;

select
    first_name,
    last_name,
    date,
    price
from
    Customers
    join orders on orders.customer_id = Customers.id 
    
    
--checking the sequence effect    
    use Business;

select
    *
from
    orders
    join Customers on Customers.id = orders.customer_id 




--Sum the amount spent on the business   
    use Business;

select
    first_name,
    last_name,
    sum(price) as total
from
    Customers
    join orders on Customers.id = orders.customer_id
group by
    first_name,
    last_name
order by
    total desc



    --left join
    use Business;
    select first_name, last_name, price from Customers left join orders on orders.customer_id = Customers.id