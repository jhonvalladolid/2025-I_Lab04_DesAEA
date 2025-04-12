CREATE OR ALTER PROC USP_ListarCategorias
AS
BEGIN
    SELECT 
        idcategoria, 
        nombrecategoria, 
        descripcion 
    FROM categorias
END
