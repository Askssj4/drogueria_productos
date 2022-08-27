import 'dart:convert';
import 'package:drogueria_productos_pie/model/generales_productos_model.dart';
import 'package:http/http.dart' as http;

import '../env.dart';

class ObtenerGeneralesProductosServicio {

      var client = http.Client();

     /* final String urlENDPOINT = "https://pokeapi.co/api/v2/pokemon/ditto"; */

     final String urlENDPOINT = "${URL1}producto/obtener_generales_detalle_producto";

     late GeneralesProductos generalesproductosModel;

     Future<GeneralesProductos> getGeneralesProductosList() async {

      try {
          final request = await client.get(Uri.parse(urlENDPOINT));

          if(request.statusCode==200)
          {
            final response  = jsonDecode(request.body);

            generalesproductosModel = GeneralesProductos.fromJson(response);
            return generalesproductosModel;
            print(response);
          }
      } catch (e) {
        throw Exception(e);
      }

      return generalesproductosModel;

     }

}