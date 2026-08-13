```python









/*==============================================
Crear tabla detalle pedido
==============================================*/

CREATE TABLA detalle_pedido (
pedido_id INT NOT NULL 
producto_id CHAR (5) NOT NULL 
fabricante_id CHAR (3) NOT NULL
precio DECIMAL (10,2) NOT NULL
created_at DATETIME2 NOT NULL
CONSTRAIN ck_detalle_pedido_created_at
DEFAULT SYSDATETIME (),
update_at DATETIME2
CHECK (PRECIO >0.0)
cantidad 
CONSTRAIN pk_detalle_pedido
PRIMARY KEY (pedido_id; producto,fabricante_id),
CONSTRAIN fk_detalle_pedido_pedido
FOREING KEY (pedido_id) --Foreing key de pedido
REFERENCE pdido (pedido_id),
CONSTRAIN fk_detalle_pedido_proucto
FOREING KEY (producto_id; fabricante_id)
REFENCES producto (producto

)
```