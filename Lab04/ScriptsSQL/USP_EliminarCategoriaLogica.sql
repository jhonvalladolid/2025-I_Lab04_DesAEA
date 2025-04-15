CREATE OR ALTER PROC USP_EliminarCategoriaLogica
    @idcategoria INT
AS
BEGIN
    UPDATE categorias
    SET Activo = 0
    WHERE idcategoria = @idcategoria
END