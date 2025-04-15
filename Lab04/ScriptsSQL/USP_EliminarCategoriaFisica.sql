CREATE OR ALTER PROC USP_EliminarCategoriaFisica
    @idcategoria INT
AS
BEGIN
    DELETE FROM categorias
    WHERE idcategoria = @idcategoria
END

