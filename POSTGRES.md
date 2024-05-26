sudo apt update
sudo apt upgrade -y

sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql-14

### postgresql.conf
Main configuration files

sudo nano /etc/postgresql/14/main/postgresql.conf
sudo nano /etc/postgresql/14/main/pg_hba.conf

### Restart postgres

sudo systemctl restart postgresql

### Access psql to create users, databases and passwords

sudo -u postgres psql

### Add a stronger password to default postgres user

alter user postgres with encrypted password 'the_postgres_user_password';

### Create user

create user your_username with encrypted password 'your_user_password';

### OR a superuser

CREATE ROLE your_username WITH LOGIN SUPERUSER CREATEDB CREATEROLE PASSWORD 'your_user_password';

### Create a database

CREATE DATABASE db_name2 WITH OWNER your_username;

### Grant permissions to user on database

GRANT ALL PRIVILEGES ON DATABASE db_name TO your_username;

### Read security tips here

### https://www.digitalocean.com/community/tutorials/how-to-secure-postgresql-against-automated-attacks

### PG Tune

Helps to configure Posgrres on slow server
https://pgtune.leopard.in.ua/
