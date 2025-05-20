DELIMITER //

CREATE PROCEDURE obtener_ventas_por_forma_de_pago (IN forma VARCHAR (50))
BEGIN
	SELECT
    v.id_comprador,
    v.id_rifa,
    v.forma_de_pago,
    c.nombre,
    c.apellido
FROM ventas v
JOIN compradores c ON v.id_comprador = c.id_comprador 
WHERE v.forma_de_pago = forma;
END//

DELIMITER ;