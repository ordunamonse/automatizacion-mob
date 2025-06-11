#!/bin/bash
set -e
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER billingapp WITH PASSWORD 'qwerty';
    ALTER USER  billingapp WITH  SUPERUSER;
    CREATE DATABASE billingapp_db;
    GRANT ALL PRIVILEGES ON DATABASE billingapp_db TO billingapp;
    GRANT ALL ON SCHEMA public TO billingapp;
EOSQL

#!/bin/bash
set -e
mysql -u root -pqwerty sistema_ventas_db <<-EOSQL
    CREATE TABLE IF NOT EXISTS productos (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(100) NOT NULL,
        precio DECIMAL(10,2) NOT NULL
    );
    INSERT INTO productos (nombre, precio) VALUES ('Producto 1', 19.99);
EOSQL
