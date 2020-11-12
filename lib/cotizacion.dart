class Cotizacion {
  Cotizacion({this.tipo, this.compra, this.venta});

  String tipo;
  double compra;
  double venta;

  String toString() {
    return '${tipo.padRight(20)}\tCompra: ARS ${compra.toStringAsFixed(2)}\tVenta: ARS ${venta.toStringAsFixed(2)}';
  }

  Map toJson() =>
      {'tipo': this.tipo, 'compra': this.compra, 'venta': this.venta};
}
