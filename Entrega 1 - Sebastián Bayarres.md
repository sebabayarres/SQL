## Descripción de la temática de la base de datos

**Introducción**

El objetivo de este proyecto es desarrollar una base de datos para la gestión de la información relacionada con la venta de rifas, organizadas anualmente por estudiantes de Ciencias Económicas en Uruguay. Esta base de datos será utilizada exclusivamente por un vendedor, quien tendrá la responsabilidad de registrar y organizar los datos de los compradores, los sorteos realizados y los premios correspondientes. El propósito es optimizar el proceso de recolección, almacenamiento y consulta de información, garantizando la eficiencia y precisión en la administración de las rifas.

**Objetivo**

El objetivo del proyecto es crear una base de datos para que el vendedor registre, organice y consulte eficientemente la información de compradores, sorteos y premios. La base debe permitir seguimiento detallado de ventas y gestionar resultados de sorteos en tiempo real, reduciendo errores y mejorando la transparencia.

**Situación Problemática**

Actualmente, la gestión de la venta de rifas se realiza manualmente, lo cual puede ocasionar inconvenientes como la pérdida de información, errores en el registro de los datos de los compradores y dificultades para llevar un seguimiento adecuado de los sorteos y premios. La implementación de una base de datos solucionará estas problemáticas al permitir un registro centralizado y ordenado de la información, eliminando los errores humanos y mejorando la eficiencia en la gestión de los datos por parte del vendedor.

**Modelos de Negocio**

La base de datos será utilizada por un vendedor que gestionará la venta de rifas para financiar el viaje de estudiantes de Ciencias Económicas. El vendedor registrará los datos de los compradores, los sorteos y los premios. Este sistema permitirá un control eficiente de las rifas vendidas, los resultados y los premios. La implementación simplificará el trabajo del vendedor, mejorando la precisión y agilidad en la gestión.

## Diagrama Entidad Relación

![Diagrama ER](Diagrama%20Entidad%20Relacion.png)


## Listado de Tablas en la Base de Datos:

- **Tabla “compradores”.**

En esta tabla se registran los datos de todos los compradores. La misma cuenta con los siguientes campos:

- **id_comprador**
- **nombre**
- **apellido**
- **email**
- **documento**
- **domicilio**
- **teléfono**

Se estableció el id_comprador como principal identificador de la tabla, por lo que se lo asigno como PRIMARY KEY. Adicionalmente se le agrego AUTO_INCREMENT para que la tabla complete automáticamente el valor al ingresar los distintos datos. Esta en formato INT dado que será un numero entero.

Los demás campos se definen como VARCHAR ya que almacenan cadenas de texto de longitud variable. Todos se establecen como NOT NULL debido a que la institución requiere obligatoriamente cada uno de estos datos. Además, los campos email, documento y teléfono se definen como UNIQUE, ya que cada comprador debe tener información única en estos campos.

- **Tabla “rifas”**

En esta tabla se registran todos los números de rifa que tiene el estudiante para vender, los cuales no son correlativos, por lo que se le agrega un identificador autoincremental al igual que en el caso de la tabla “compradores”. Los campos son:

- **id_rifa**
- **numero**

Se ha establecido la condición UNIQUE en el campo “numero” ya que cada rifa tiene un numero único que no puede repetirse en otras rifas.

- **Tabla “premios”**

En esta tabla se registran todos los premios, se los identifica con un identificador autoincremental al igual que en las tablas anteriores. Los campos son:

- **id_premio**
- **descripción_premio**

Se ha establecido la condición NOT NULL en el campo “descripción_premio” dado que el mismo es necesario para identificar el premio.

- **Tabla “sorteos”**

En esta tabla se registran todos los sorteos, se los identifica con un identificador autoincremental al igual que en las tablas anteriores. Los campos son:

- **id_sorteo**
- **id_premio**
- **resultado**

El campo id_premio hace referencia a la tabla “premios” mediante un FOREIGN KEY. El campo resultado hace referencia al campo “numero” de la tabla “rifas”, ya que el resultado del sorteo es un número de rifa que resulta ganador.

- **Tabla “ventas”**

En esta tabla se registran todos los sorteos, se los identifica con un identificador autoincremental al igual que en las tablas anteriores. Cada venta asocia un comprador con una rifa. Los campos son:

- **id_comprador**
- **id_rifa**
- **tipo_de_venta**
- **forma_de_pago**

El campo id_comprador hace referencia a la tabla “compradores” mediante un FOREIGN KEY. El campo id_rifa hace referencia a la tabla “rifas”.

Adicionalmente se crean los campos de tipo_de_venta y forma_de_pago, con formato VARCHAR ya que pueden tener caracteres variables y con la condición NOT NULL ya que es obligatorio informar estos datos.

A continuación se adjunta el script: [Script.sql](Script.sql)
