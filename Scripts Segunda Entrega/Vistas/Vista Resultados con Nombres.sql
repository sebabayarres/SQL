CREATE VIEW resultados AS
SELECT
s.id_sorteo,
s.id_premio,
r.numero AS numero_ganador,
c.nombre,
c.apellido
FROM sorteos s
LEFT JOIN rifas r ON s.resultado = r.id_rifa
LEFT JOIN ventas v ON r.id_rifa = v.id_rifa
LEFT JOIN compradores c ON v.id_comprador = c.id_comprador;