# Postgres Database and PGAdmin GUI

## requirements:

* [docker](https://docs.docker.com/engine/installation/) installed
* [docker-compose](https://docs.docker.com/compose/install/) installed

## setup

### installation steps

1. `git clone https://github.com/mnrm/docker-postgres.git`
2. `cd docker-postgres`
3. `docker-compose up`

For database initialization, note that any sql scripts in the `init` directory will be run on `docker-compose up`.

### result

* postgres running on 5432
  * user: `example`
  * password: `password`
* pgadmin4 running on 5050
  * user: `example`
  * password: `password`

### pgadmin postgres web GUI steps

1. Open http://localhost:5050 in a browser.
2. Add a new server:
   i. From the main menu, Object > Create > Server
   ii. General > Name: `any name you like`
   iii. Connection > Host Name/Address: `postgres`
   iv. Connection > Port: `5432`
   v. Connection > Maintenance Database: `postgres`
   vi. Connection > Username: `example`
   vii. Connection > Password: `password`.
3. On the left-side browser, navigate to "Servers > what_you_named_your_server > Databases > example > Schemas > public > Tables > users". Right-click on the "users" table and select "View/Edit Data > All Rows".

### cli

To run the psql cli: `docker-compose run postgres psql -h postgres -U example -d example`
