CREATE VIEW rifa_por_comprador AS
SELECT 
r.numero,
c.nombre,
c.apellido
FROM rifas r
LEFT JOIN ventas v ON r.id_rifa = v.id_rifa
LEFT JOIN compradores c ON v.id_comprador = c.id_comprador;

