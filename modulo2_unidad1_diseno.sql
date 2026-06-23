CREATE TABLE CLIENTES (
id_clientes INT, -- se usa entero porque identificamos un valor numerico para idcentificar clientes
nombre VARCHAR(100),-- los nombre son textos
perfil_bio TEXT, -- aca vamos a poner una nota asi que necesitamos texto largo
fecha_registro DATE -- porque solo necesitamos la fecha
);

CREATE TABLE PRODUCTOS (
id_producto INT,-- el id sera numerico
descripcion VARCHAR(255), -- cuenta que es el producto
precio DECIMAL(10,2),-- es un numero de 10 digitos y 2 decimales
esta_activo INT -- SE TOMA ENTERO PARA DEFINIR 0 SI ESTA INACTIVO Y 1 SI ES ACTIVO
);
