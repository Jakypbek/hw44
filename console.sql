CREATE TABLE people (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    surname VARCHAR NOT NULL,
    age SMALLINT NOT NULL,
    passport_id INTEGER REFERENCES passports(id),
    car_id INTEGER REFERENCES cars(id),
    house_id INTEGER REFERENCES houses(id),
    job_id INTEGER REFERENCES jobs(id)
);
CREATE TABLE passports (
    id SERIAL PRIMARY KEY,
    inn BIGINT NOT NULL,
    expiration_date DATE NOT NULL
);
CREATE TABLE cars (
    id SERIAL PRIMARY KEY,
    brand VARCHAR NOT NULL,
    model VARCHAR NOT NULL,
    year_of_issue INTEGER NOT NULL,
    price DECIMAL,
    toy_id INTEGER REFERENCES toys(id)
);
CREATE TABLE houses (
    id SERIAL PRIMARY KEY,
    purpose VARCHAR NOT NULL,
    price DECIMAL
);
CREATE TABLE jobs (
    id SERIAL PRIMARY KEY,
    position VARCHAR NOT NULL,
    salary INTEGER NOT NULL
);

CREATE TABLE toys (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    weight NUMERIC NOT NULL
);
CREATE TABLE phones (
    id SERIAL PRIMARY KEY,
    brand VARCHAR NOT NULL,
    model VARCHAR NOT NULL,
    memory INTEGER NOT NULL,
    price DECIMAL
);
CREATE TABLE banks (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR NOT NULL,
    annual_turnover BIGINT,
    costumers_id INTEGER REFERENCES people(id)
);
CREATE TABLE costumers (
    id SERIAL PRIMARY KEY,
    cash INTEGER
);
CREATE TABLE notebook (
    id SERIAL PRIMARY KEY,
    page_size INTEGER
);
CREATE TABLE university (
    id SERIAL PRIMARY KEY,
    rooms INTEGER,
    staff_id INTEGER REFERENCES teachers(id)
);
CREATE TABLE teachers (
    id SERIAL PRIMARY KEY,
    seniority INTEGER,
    notebook_id INTEGER REFERENCES notebook(id)
);
CREATE TABLE groups (
    id SERIAL PRIMARY KEY,
    group_size INTEGER
);
CREATE TABLE dresses (
    id SERIAL PRIMARY KEY,
    size INTEGER,
    gender VARCHAR
);
CREATE TABLE rooms (
    id SERIAL PRIMARY KEY,
    number_of_seats INTEGER
);
CREATE TABLE cities (
    id SERIAL PRIMARY KEY,
    population INTEGER
);
CREATE TABLE parks (
    id SERIAL PRIMARY KEY,
    number_of_game_zones INTEGER
);
CREATE TABLE shops (
    id SERIAL PRIMARY KEY,
    name_of_product VARCHAR
);
CREATE TABLE cafes (
    id SERIAL PRIMARY KEY,
    main_meal VARCHAR
);


INSERT INTO people (name,surname,age ,passport_id,car_id ,house_id,job_id )
VALUES ('Авдей', 'Авксентий', 23, 1, 2 , 3, 1),
       ('Агапит', 'Агафон', 34, 2, 1, 2, 2),
       ('Акакий', 'Александр', 25, 3, 3, 1, 3);

INSERT INTO passports (inn ,expiration_date )
VALUES (11652345616615, '2022.12.15' ),
       (1165642416615, '2022.10.21' ),
       (1165623416615, '2022.07.23' );

INSERT INTO cars (brand ,model , year_of_issue ,price , toy_id)
VALUES ('TOYOTA', 'LX 570', '2016', 35000, 1),
       ('HONDA', 'CR-V', '2009', 13000, 2),
       ('NISSAN', 'X-TRAIL', '2004', 85000, 3);

INSERT INTO houses (purpose ,price )
VALUES ('for living', 74000),
       ('candy shop', 98000),
       ('toy shop', 88500);

INSERT INTO jobs (position ,salary )
VALUES ('Chief', 1400),
       ('office manager', 900),
       ('worker', 500);

INSERT INTO toys (name ,weight )
VALUES ('car', 150),
       ('plane', 240),
       ('gun', 96);

INSERT INTO phones ( brand ,model ,memory ,price )
VALUES ('Apple', '6 plus', 256, 450),
       ('Samsung', 'Galaxy S10', 512, 600),
       ('Xiaomi', 'Redmi X4', 64, 340);

INSERT INTO banks (company_name ,annual_turnover ,costumers_id )
VALUES ('Demir', 570000, 1),
       ('KICB', 530000, 2),
       ('Aiyl', 670000, 3);

INSERT INTO costumers (cash )
VALUES (340),
       (1200),
       (390);

INSERT INTO notebook (page_size )
VALUES (36),
       (92),
       (16);

INSERT INTO university (rooms ,staff_id )
VALUES (7, 2),
       (12, 1),
       (9, 3);

INSERT INTO teachers (seniority ,notebook_id )
VALUES (12, 1),
       (24, 2),
       (5, 3);

INSERT INTO groups (group_size )
VALUES (3),
       (3),
       (3);

INSERT INTO dresses (size ,gender )
VALUES (12, 'Female'),
       (32, 'Male'),
       (25, 'Male');

INSERT INTO rooms (number_of_seats )
VALUES (3),
       (4),
       (5);

INSERT INTO cities (population )
VALUES (1400000),
       (2500000),
       (1500000);

INSERT INTO parks (number_of_game_zones )
VALUES (4),
       (3),
       (1);

INSERT INTO shops (name_of_product )
VALUES ('Dress'),
       ('Toys'),
       ('Food');

INSERT INTO cafes (main_meal )
VALUES ('Fish'),
       ('Soup'),
       ('Borch');
