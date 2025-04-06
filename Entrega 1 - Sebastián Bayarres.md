### Descripción de la temática de la base de datos

Anualmente se realiza en Uruguay un viaje de estudiantes de Ciencias Económicas, para el cual se hace una venta de rifas. Cada estudiante debe vender un numero de rifas como mínimo e informar a la institución distintos datos de los compradores.

El propósito de esta base de datos es registrar toda la información relacionada con los compradores, así como los sorteos, sus resultados y los premios correspondientes.

### Diagrama Entidad Relación

![Diagrama ER](Diagrama%20Entidad%20Relacion.png)

### Listado de Tablas en la Base de Datos:

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

Se adjunta a continuación el script: [Entrega 1 - Sebastian Bayarres.sql](Entrega%201%20-%20Sebastian%20Bayarres.sql)
