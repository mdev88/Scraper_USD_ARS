import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;
import 'lib/cotizacion.dart';

void main() async {
  const url = 'https://www.cronista.com/MercadosOnline/dolar.html';

  var response = await http.get(url);
  var html = parse(response.body);
  var tables = html.body.getElementsByClassName('tabla-datos dolar-cotizacion');
  List<Cotizacion> cotizaciones = <Cotizacion>[];

  tables.forEach((table) {
    String tipo =
        table.children.first.children.first.children.first.text.trim();
    double venta = double.parse(table
        .children.last.children.first.children.last.children.first.text
        .trim()
        .substring(2)
        .replaceAll(',', '.'));
    double compra = double.parse(table
        .children.last.children.first.children.first.children.first.text
        .trim()
        .substring(2)
        .replaceAll(',', '.'));

    cotizaciones.add(Cotizacion(tipo: tipo, compra: compra, venta: venta));
  });

  cotizaciones.forEach((element) => print(element));
}
