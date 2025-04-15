CREATE OR ALTER PROC USP_InsertarCategoria
    @idcategoria INT,
    @nombrecategoria VARCHAR(100),
    @descripcion TEXT = NULL,
    @CodCategoria VARCHAR(50) = NULL
AS
BEGIN
    INSERT INTO categorias (idcategoria, nombrecategoria, descripcion, Activo, CodCategoria)
    VALUES (@idcategoria, @nombrecategoria, @descripcion, 1, @CodCategoria)
END

