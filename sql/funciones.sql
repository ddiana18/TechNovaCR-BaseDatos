
CREATE OR REPLACE FUNCTION calcular_total(id NUMBER)
RETURN NUMBER
IS
    v_total NUMBER;
BEGIN

    SELECT SUM(cantidad * precio_unitario)
    INTO v_total
    FROM detalle_pedido
    WHERE id_pedido = id;

    RETURN v_total;

END;
/