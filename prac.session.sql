CREATE TABLE users (
    id serial PRIMARY KEY,
    first_name varchar(256) NOT NULL CHECK (first_name != ''),
    last_name varchar(256) NOT NULL CHECK (last_name != ''),
    phone_number varchar(20) NOT NULL CHECK (phone_number != ''),
    address varchar(256) NOT NULL CHECK (address != '')
);

CREATE TABLE books (
    id serial PRIMARY KEY,
    user_id int REFERENCES users DEFAULT NULL,
    author varchar(256) NOT NULL CHECK (author != ''),
    title varchar(256) NOT NULL CHECK (title != ''),
    year date,
    number_of_page int NOT NULL CHECK (number_of_page > 0)
);

DROP TABLE books;


INSERT INTO users (first_name, last_name, phone_number, address)
VALUES (
    'Lisa',
    'Simpson',
    '+123456789',
    'Baker street'
  );

INSERT INTO books (user_id, author, title, year, number_of_page)
VALUES (
    2,
    'Joanne Rowling',
    'Harry Potter and the Philosophers Stone',
    '1997-01-01',
    350
);
