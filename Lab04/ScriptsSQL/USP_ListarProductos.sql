CREATE OR ALTER PROC USP_ListarProductos
AS
BEGIN
    SELECT 
        idproducto, 
        nombreProducto, 
        precioUnidad, 
        unidadesEnExistencia 
    FROM productos
END
