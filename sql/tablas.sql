
CREATE TABLE cliente(
    id_cliente NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    correo VARCHAR2(100),
    telefono VARCHAR2(20),
    direccion VARCHAR2(150)
);

/* tabla de categorias de productos */

CREATE TABLE categoria(
    id_categoria NUMBER PRIMARY KEY,
    nombre_categoria VARCHAR2(100),
    descripcion VARCHAR2(200)
);

/* tabla de productos */

CREATE TABLE producto(
    id_producto NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    precio NUMBER,
    stock NUMBER,
    id_categoria NUMBER,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);


/* tabla de pedidos */

CREATE TABLE pedido(
    id_pedido NUMBER PRIMARY KEY,
    fecha_pedido DATE,
    total NUMBER,
    id_cliente NUMBER,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);


/* tabla detalle de pedidos */

CREATE TABLE detalle_pedido(
    id_detalle NUMBER PRIMARY KEY,
    cantidad NUMBER,
    precio_unitario NUMBER,
    id_pedido NUMBER,
    id_producto NUMBER,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);


/* tabla pagos */

CREATE TABLE pago(
    id_pago NUMBER PRIMARY KEY,
    fecha_pago DATE,
    metodo_pago VARCHAR2(50),
    monto NUMBER,
    id_pedido NUMBER,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);