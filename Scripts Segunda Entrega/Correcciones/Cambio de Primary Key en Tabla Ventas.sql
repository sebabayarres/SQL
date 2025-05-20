CREATE TABLE ventas (
id_comprador INT,
id_rifa INT PRIMARY KEY,
tipo_de_venta VARCHAR (50) NOT NULL,
forma_de_pago VARCHAR (50) NOT NULL,
FOREIGN KEY (id_comprador) REFERENCES compradores(id_comprador),
FOREIGN KEY (id_rifa) REFERENCES rifas(id_rifa));