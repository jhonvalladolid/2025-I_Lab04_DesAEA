CREATE OR ALTER PROC USP_ListarDetallesPedidosPorFecha
    @fechaInicio DATE = NULL,
    @fechaFin DATE = NULL
AS
BEGIN
    SELECT 
        d.idPedido,
        d.idProducto,
        p.nombreProducto,
        d.cantidad,
        d.precioUnidad,
        d.descuento,
        pe.FechaPedido
    FROM detallesdepedidos d
    INNER JOIN pedidos pe ON d.idPedido = pe.idPedido
    INNER JOIN productos p ON d.idProducto = p.idproducto
    WHERE 
        (pe.FechaPedido >= @fechaInicio OR @fechaInicio IS NULL)
        AND (pe.FechaPedido <= @fechaFin OR @fechaFin IS NULL)
END


EXEC USP_ListarDetallesPedidosPorFecha '1994-08-04', '1994-08-08'
EXEC USP_ListarDetallesPedidosPorFecha '1996-05-27', NULL
EXEC USP_ListarDetallesPedidosPorFecha NULL, NULL
