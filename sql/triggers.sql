
/* trigger para actualizar stock cuando se vende un producto*/

CREATE OR REPLACE TRIGGER actualizar_stock
AFTER INSERT ON detalle_pedido
FOR EACH ROW
BEGIN

    UPDATE producto
    SET stock = stock - :NEW.cantidad
    WHERE id_producto = :NEW.id_producto;

END;
/