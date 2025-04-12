CREATE OR ALTER PROC USP_BuscarProveedores
    @nombreContacto VARCHAR(30) = '',
    @ciudad VARCHAR(15) = ''
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
    WHERE 
        (nombrecontacto LIKE '%' + @nombreContacto + '%' OR @nombreContacto = '')
        AND (ciudad LIKE '%' + @ciudad + '%' OR @ciudad = '')
END


EXEC USP_BuscarProveedores 'Charlotte Cooper', 'Londres'
EXEC USP_BuscarProveedores '', 'londres'
EXEC USP_BuscarProveedores '', ''