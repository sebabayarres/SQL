### Correcciones de entrega anterior

Durante el desarrollo de esta segunda entrega se ha detectado que algunos campos definidos en la entrega anterior no eran compatibles con las funciones que debían cumplir, por lo que fueron corregidos según se detalla a continuación.

**Tabla “Ventas”.**

En la primera entrega, se definió "id_comprador" como PRIMARY KEY en la tabla ventas, lo que impide repeticiones. Esto es incorrecto, ya que un comprador puede aparecer varias veces al comprar múltiples rifas.

El campo que no debería repetirse es el de “id_rifa”, ya que cada rifa puede ser vendida a una sola persona. Por tanto, se ha corregido el script para crear la tabla estableciendo el campo “id_rifa” como PRIMARY KEY.

Ver script adjunto: [Cambio de Primary Key en Tabla Ventas.sql](Scripts Segunda Entrega/Correcciones)


**Tabla “Sorteos”.**

En la primera entrega se definió el “id_sorteo” como auto incremental y PRIMARY KEY. Esto es incorrecto, ya que en cada sorteo hay varios premios, por lo que el “id_sorteo” debe repetirse. Por tanto, se ha corregido el script para crear la tabla sin estas condiciones.

Ver script adjunto: [Cambio de Tabla Sorteos.sql](SQL/Scripts%20Segunda%20Entrega/Correcciones/Cambio%20de%20Tabla%20Sorteos.sql)

### Importación de datos

Se ha agregado un dato de manera manual a modo de ejemplo. Ver script adjunto:

El resto de los datos se ha importado mediante archivo CSV. Se adjuntan capturas de pantalla: [Importación de Datos](https://github.com/sebabayarres/SQL/tree/main/Importación%20de%20Datos)

### Listado de Vistas

**Vista “resultados”**

El propósito de esta vista es resumir los resultados de los sorteos y facilitar el acceso a dicha información. Se presenta, para cada sorteo, el número de rifa ganador, así como el nombre y apellido del ganador, garantizando que no se divulguen datos sensibles, protegiendo así la privacidad de los participantes.

En la vista se expone:

- **id_sorteo** de la tabla sorteos
- **id_premio** de la tabla sorteos
- **numero** de la tabla rifas
- **nombre** de la tabla compradores
- **apellido** de la tabla compradores

Ver script adjunto:

**Vista “rifa_por_comprador”**

El propósito de esta vista es mostrar un listado de todas las rifas con los nombres y apellidos de sus respectivos compradores. Esto facilita identificar rápidamente el comprador de cada rifa y cuáles aún están disponibles, sin revelar datos sensibles de los compradores.

En la vista se expone:

- **numero** de la tabla rifas
- **nombre** de la tabla compradores
- **apellido** de la tabla compradores

Ver script adjunto:

### Listado de Funciones

**Función “contar_rifas_vendidas”.**

La función tiene como objetivo devolver el número de rifas vendidas de manera sencilla para el usuario. Dado que cada rifa puede ser vendida solo una vez, la función cuenta el total de ventas para determinar la cantidad de rifas vendidas.

La función lee información desde la tabla de ventas.

Ver script adjunto:

### Listado de Stored Procedures

**Stored Procedure “obtener_ventas_por_forma_de_pago”**

El procedimiento facilita el acceso rápido a los datos clave de las ventas realizadas con una forma de pago específica. Esto permite identificar las rifas pagadas con crédito y realizar un seguimiento del pago de las cuotas.

El procedimiento arroja los siguientes datos:

- **id_comprador** de la tabla ventas
- **id_rifa** de la tabla ventas
- **forma_de_pago** de la tabla ventas
- **nombre** de la tabla compradores
- **apellido** de la tabla compradores

Ver script adjunto:

**Stored Procedure “obtener_ventas_por_tipo”**

El procedimiento optimiza el acceso a los datos clave de las ventas efectuadas en una modalidad específica. Este enfoque permite identificar las transacciones realizadas de manera online, facilitando la coordinación de la entrega posterior de la rifa impresa.

El procedimiento arroja los siguientes datos:

- **id_comprador** de la tabla ventas
- **id_rifa** de la tabla ventas
- **nombre** de la tabla compradores
- **apellido** de la tabla compradores
- **tipo_de_venta** de la tabla ventas

Ver script adjunto:

### Listado de Triggers

**Trigger sobre la tabla “ventas”**

Se ha creado una tabla de auditoría que registra los cambios de INSERT, UPDATE y DELETE en la tabla ventas, permitiendo controlar movimientos y detectar inconsistencias.

Esto se ha realizado mediante un trigger que registra todas las nuevas adiciones, todos los cambios y todas las eliminaciones de la tabla.

Ver script adjunto:
