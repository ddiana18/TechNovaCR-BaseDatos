
/* procedimiento para insertar cliente */

CREATE OR REPLACE PROCEDURE insertar_cliente(
    id NUMBER,
    nombre VARCHAR2,
    correo VARCHAR2,
    telefono VARCHAR2,
    direccion VARCHAR2
)
IS
BEGIN
    INSERT INTO cliente
    VALUES(id,nombre,correo,telefono,direccion);
END;
/

/* para ver clientes */

CREATE OR REPLACE PROCEDURE ver_clientes
IS
BEGIN
    FOR c IN (SELECT * FROM cliente) LOOP
        DBMS_OUTPUT.PUT_LINE(c.nombre);
    END LOOP;
END;
/