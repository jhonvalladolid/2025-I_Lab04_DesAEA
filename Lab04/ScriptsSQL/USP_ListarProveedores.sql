CREATE OR ALTER PROC USP_ListarProveedores
AS
BEGIN
    SELECT 
        idProveedor, 
        nombreCompa�ia, 
        nombrecontacto, 
        ciudad, 
        pais, 
        telefono 
    FROM proveedores
END
