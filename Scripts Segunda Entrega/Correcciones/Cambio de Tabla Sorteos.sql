DROP TABLE sorteos;

CREATE TABLE sorteos (
id_sorteo INT,
id_premio INT,
resultado INT,
FOREIGN KEY (id_premio) REFERENCES premios(id_premio),
FOREIGN KEY (resultado) REFERENCES rifas(id_rifa)
);