CREATE EXTENSION
IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS users
(
  uuid uuid NOT NULL DEFAULT uuid_generate_v4(),
  id serial NOT NULL primary key,
  first_name varchar(50),
  last_name varchar(50),
  created_date date NOT NULL DEFAULT CURRENT_DATE,
  updated_date date NOT NULL DEFAULT CURRENT_DATE
);

insert into users
  (first_name, last_name)
values
  ('Nate', 'Smith'),
  ('Mike', 'Smith'),
  ('Melanie', 'Jones');
