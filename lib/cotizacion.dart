class Cotizacion {
  Cotizacion({required this.tipo, required this.compra, required this.venta});

  String tipo;
  double compra;
  double venta;

  @override
  String toString() {
    return '${tipo.padRight(20)}\tCompra: ARS ${compra.toStringAsFixed(2)}\tVenta: ARS ${venta.toStringAsFixed(2)}';
  }

  // Map toJson() => {
  //       'tipo': tipo,
  //       'compra': compra,
  //       'venta': venta,
  //     };
}
