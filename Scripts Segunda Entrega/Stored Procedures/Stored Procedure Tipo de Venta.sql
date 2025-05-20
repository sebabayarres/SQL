DELIMITER //

CREATE PROCEDURE obtener_ventas_por_tipo(IN tipo VARCHAR(50))
BEGIN
	SELECT
	v.id_comprador,
    v.id_rifa,
    c.nombre,
    c.apellido,
    v.tipo_de_venta
FROM ventas v
JOIN compradores c ON v.id_comprador = c.id_comprador
WHERE v.tipo_de_venta = tipo;
END //

DELIMITER ;