-- Tabla Tarjetas
CREATE TABLE Tarjetas (
    id_tarjeta INT PRIMARY KEY,
    nombre_tarjeta VARCHAR(100)
);

-- Tabla Motherboards
CREATE TABLE Motherboards (
    id_motherboard INT PRIMARY KEY,
    nombre_motherboard VARCHAR(100)
);

-- Tabla Procesadores
CREATE TABLE Procesadores (
    id_procesador INT PRIMARY KEY,
    nombre_procesador VARCHAR(100)
);

-- Tabla Memorias
CREATE TABLE Memorias (
    id_memoria INT PRIMARY KEY,
    nombre_memoria VARCHAR(100)
);

-- Tabla Discos
CREATE TABLE Discos (
    id_disco INT PRIMARY KEY,
    nombre_disco VARCHAR(100)
);

-- Tabla Componentes
CREATE TABLE Componentes (
    id_componentes INT PRIMARY KEY,
    id_tarjetas INT,
    id_mother INT,
    id_procesadores INT,
    id_memoria INT,
    id_disco INT,
    -- Restricciones de clave foránea
    FOREIGN KEY (id_tarjetas) REFERENCES Tarjetas(id_tarjeta),
    FOREIGN KEY (id_mother) REFERENCES Motherboards(id_motherboard),
    FOREIGN KEY (id_procesadores) REFERENCES Procesadores(id_procesador),
    FOREIGN KEY (id_memoria) REFERENCES Memorias(id_memoria),
    FOREIGN KEY (id_disco) REFERENCES Discos(id_disco)
);

CREATE TABLE computadora (
    id_computadora INT PRIMARY KEY AUTO_INCREMENT,
    computadoraOBJ VARCHAR(1000)
);

CREATE TABLE agregados (
    id_agregados INT PRIMARY KEY AUTO_INCREMENT,
    tecladosOBJ VARCHAR(1000),
    mouseOBJ VARCHAR(1000)
);

-- Tabla datos
CREATE TABLE datos (
    id_contacto INT PRIMARY KEY AUTO_INCREMENT,
    telefono VARCHAR(20),
    mail VARCHAR(100)
);

-- Tabla ubicacion
CREATE TABLE ubicacion (
    id_ubicacion INT PRIMARY KEY AUTO_INCREMENT,
    codigo_postal VARCHAR(10) NOT NULL,
    piso VARCHAR(10),
    direccion VARCHAR(100) NOT NULL
);


-- Tabla formulario
CREATE TABLE formulario (
    id_cliente INT PRIMARY KEY,
    id_contacto INT,
    id_ubicacion INT,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    numero_DNI VARCHAR(20),
    FOREIGN KEY (id_contacto) REFERENCES datos(id_contacto),
    FOREIGN KEY (id_ubicacion) REFERENCES ubicacion(id_ubicacion)
);

-- Tabla armador
CREATE TABLE armador (
    id_trabajador INT PRIMARY KEY,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES formulario(id_cliente)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT
);

-- Tabla orden
CREATE TABLE orden (
    id_orden INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_ubicacion INT NOT NULL,
    id_compra INT NOT NULL,
    fecha_orden DATE,
    FOREIGN KEY (id_cliente) REFERENCES formulario(id_cliente),
    FOREIGN KEY (id_ubicacion) REFERENCES ubicacion(id_ubicacion)
);

CREATE TABLE empleados (
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    cargo VARCHAR(50),
    fecha_contratacion DATE,
    salario DECIMAL(10, 2)
);

CREATE VIEW VistaOrdenes AS
SELECT o.id_orden, p.id_pedido
FROM orden o
INNER JOIN pedidos p ON o.id_cliente = p.id_cliente;

CREATE VIEW VistaFormularioUbicacion AS
SELECT f.nombre, f.apellido, u.id_ubicacion
FROM formulario f
INNER JOIN ubicacion u ON f.id_ubicacion = u.id_ubicacion;

CREATE VIEW VistaTrabajadorCliente AS
SELECT a.id_trabajador, f.id_cliente
FROM armador a
INNER JOIN formulario f ON a.id_cliente = f.id_cliente;

CREATE VIEW VistaContactoFormulario AS
SELECT d.id_contacto, d.telefono, d.mail, f.nombre, f.apellido, f.numero_DNI
FROM datos d
INNER JOIN formulario f ON d.id_contacto = f.id_contacto;


-- INTENTE HACER UNA SUMA PERO NO TENGO EL ID_CLIENTE EN OTRAS TABLAS DEJO AHI POR UN FUTURO --
CREATE VIEW VistaSumaPreciosComponentes AS 
SELECT p.id_pedido, SUM(mb.precio + t.precio) AS suma_precios
FROM pedidos p
INNER JOIN motherboards mb ON p.id_pedido = mb.id_pedido
INNER JOIN tarjetas t ON p.id_pedido = t.id_pedido
GROUP BY p.id_pedido;

CREATE VIEW VistaComponentes AS
SELECT d.id_disco, m.id_memoria, mb.id_motherboard, pr.id_procesador, t.id_tarjeta
FROM discos d
CROSS JOIN memorias m
CROSS JOIN motherboards mb
CROSS JOIN procesadores pr
CROSS JOIN tarjetas t;


-- Función para calcular el precio total de una orden
DELIMITER //
CREATE FUNCTION CalcularPrecioTotalOrden(orden_id INT) RETURNS DECIMAL(10, 2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE total DECIMAL(10, 2);
    
    SELECT SUM(componentes.precio) INTO total
    FROM orden
    JOIN orden_componentes ON orden.id_orden = orden_componentes.id_orden
    JOIN componentes ON orden_componentes.id_componente = componentes.id_componente
    WHERE orden.id_orden = orden_id;
    
    RETURN total;
END;
//
DELIMITER ;

-- Función para obtener el nombre completo de un cliente
DELIMITER //
CREATE FUNCTION ObtenerNombreCompletoCliente(contacto_id INT) RETURNS VARCHAR(255)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE nombre_completo VARCHAR(255);
    
    SELECT CONCAT(datos.nombre, ' ', datos.apellido) INTO nombre_completo
    FROM datos
    WHERE datos.id_contacto = contacto_id;
    
    RETURN nombre_completo;
END;
//
DELIMITER ;


DELIMITER //
CREATE PROCEDURE ObtenerDetallesComputadora(IN computerId INT)
BEGIN
    -- Obtiene detalles de una computadora incluyendo información del motherboard, procesador, memoria, tarjeta y disco.
    SELECT c.id_computadora, c.computadoraOBJ, m.nombre_motherboard, p.nombre_procesador,
           mem.nombre_memoria, t.nombre_tarjeta, d.nombre_disco
    FROM computadora c
    JOIN motherboards m ON c.id_motherboard = m.id_motherboard
    JOIN procesadores p ON c.id_procesador = p.id_procesador
    JOIN memorias mem ON c.id_memoria = mem.id_memoria
    JOIN tarjetas t ON c.id_tarjeta = t.id_tarjeta
    JOIN discos d ON c.id_disco = d.id_disco
    WHERE c.id_computadora = computerId;
END;
//
DELIMITER ;


DELIMITER //
CREATE PROCEDURE CalcularTotalOrden(IN orderId INT, OUT total DECIMAL(10, 2))
BEGIN
    -- Calcula el total de una orden sumando los precios de los componentes asociados a la orden.
    SELECT SUM(c.precio)
    INTO total
    FROM componentes c
    JOIN orden_componentes oc ON c.id_componente = oc.id_componente
    WHERE oc.id_orden = orderId;
END;
//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE AgregarEmpleado(IN firstName VARCHAR(50), IN lastName VARCHAR(50), IN jobTitle VARCHAR(50), IN hireDate DATE, IN salary DECIMAL(10, 2))
BEGIN
    -- Agrega un nuevo empleado a la tabla de empleados.
    INSERT INTO empleados (nombre, apellido, cargo, fecha_contratacion, salario)
    VALUES (firstName, lastName, jobTitle, hireDate, salary);
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER VerificarPrecioMinimo
BEFORE INSERT ON discos
FOR EACH ROW
BEGIN
    -- Precio mínimo permitido
    DECLARE precio_minimo DECIMAL(10, 2);
    SET precio_minimo = 50.00;
    
    -- Verificar y ajustar el precio si es necesario
    IF NEW.precio < precio_minimo THEN
        SET NEW.precio = precio_minimo;
    END IF;
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER ActualizarUltimaFechaPedido
AFTER INSERT ON pedidos
FOR EACH ROW
BEGIN
    -- Actualizar la última fecha de pedido del cliente
    UPDATE clientes SET ultima_fecha_pedido = NOW() WHERE id_cliente = NEW.id_cliente;
END;
//
DELIMITER ;
