
CREATE VIEW vista_productos AS
SELECT nombre,precio,stock
FROM producto;


CREATE VIEW vista_pedidos AS
SELECT id_pedido,fecha_pedido,total
FROM pedido;