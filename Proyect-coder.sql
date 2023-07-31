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
