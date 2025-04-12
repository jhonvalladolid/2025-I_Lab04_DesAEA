CREATE OR ALTER PROC USP_ListarProveedores
AS
BEGIN
    SELECT 
        idProveedor, 
        nombreCompaņia, 
        nombrecontacto, 
        ciudad, 
        pais, 
        telefono 
    FROM proveedores
END
