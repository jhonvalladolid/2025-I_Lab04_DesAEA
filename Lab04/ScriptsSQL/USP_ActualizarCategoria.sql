CREATE OR ALTER PROC USP_ActualizarCategoria
    @idcategoria INT,
    @nombrecategoria VARCHAR(100),
    @descripcion TEXT = NULL,
    @CodCategoria VARCHAR(50) = NULL
AS
BEGIN
    UPDATE categorias
    SET 
        nombrecategoria = @nombrecategoria,
        descripcion = @descripcion,
        CodCategoria = @CodCategoria
    WHERE idcategoria = @idcategoria
END

