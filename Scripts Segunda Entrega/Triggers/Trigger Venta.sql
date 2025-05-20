CREATE TABLE auditoria_ventas (
id_auditoria INT AUTO_INCREMENT PRIMARY KEY,
operacion VARCHAR (20),
id_comprador INT,
id_rifa INT,
fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP)
;

DELIMITER //

CREATE TRIGGER insert_ventas
AFTER INSERT ON ventas
FOR EACH ROW
BEGIN
	INSERT INTO auditoria_ventas (
		operacion,
		id_comprador,
		id_rifa)
	VALUES ('INSERT', NEW.id_comprador, NEW.id_rifa);
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER update_ventas
AFTER UPDATE ON ventas
FOR EACH ROW
BEGIN
INSERT INTO auditoria_ventas (
operacion,
id_comprador,
id_rifa)
VALUES ('UPDATE', NEW.id_comprador, NEW.id_rifa);
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER delete_ventas
AFTER DELETE ON ventas
FOR EACH ROW
BEGIN
	INSERT INTO auditoria_ventas (
	operacion,
	id_comprador,
	id_rifa)
VALUES ('DELETE', OLD.id_comprador, OLD.id_rifa);
END //

DELIMITER ;