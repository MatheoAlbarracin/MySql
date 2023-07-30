CREATE TABLE productos (
    products_id INT PRIMARY KEY,
    ram VARCHAR(100),
    procesadores VARCHAR(100),
    agregados VARCHAR(100),
    monitores VARCHAR(100),
    tarjeta_de_video VARCHAR(100)
);

CREATE TABLE CLIENTES (
    client_id INT UNIQUE,
    Name VARCHAR(100) NOT NULL,
    Document_type VARCHAR(50) NOT NULL,
    Document_number VARCHAR(20) NOT NULL,
    Legal_name VARCHAR(150) NOT NULL,
    Address_line1 VARCHAR(200),
    Address_line2 VARCHAR(200),
    Country_id INT NOT NULL,
    CP VARCHAR(10) NOT NULL,
    Province_id INT NOT NULL,
    Note VARCHAR(500)
);

CREATE TABLE BUDGET_HEADER (
    budget_id INT PRIMARY KEY NOT NULL,
    client_id INT NOT NULL,
    Budget_date DATE NOT NULL,
    service_start_dt DATE,
    service_end_dt DATE,
    addres_line VARCHAR(200),
    Description VARCHAR(500),
    Total DECIMAL(10, 2) DEFAULT 0
);

ALTER TABLE BUDGET_HEADER
ADD CONSTRAINT fk_client_id
FOREIGN KEY (client_id) REFERENCES CLIENTES(client_id);

