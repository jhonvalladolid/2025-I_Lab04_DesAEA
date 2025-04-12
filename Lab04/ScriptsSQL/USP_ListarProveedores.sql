CREATE OR ALTER PROC USP_ListarProveedores
AS
BEGIN
    SELECT 
        idProveedor, 
        nombreCompañia, 
        nombrecontacto, 
        ciudad, 
        pais, 
        telefono 
    FROM proveedores
END
