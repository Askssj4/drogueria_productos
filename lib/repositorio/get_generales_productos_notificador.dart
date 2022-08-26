import 'package:drogueria_productos_pie/model/generales_productos_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../services/servicios.dart';

class GeneralesProductosNotificador extends ChangeNotifier{

  final ObtenerGeneralesProductosServicio _obtenerGeneralesProductosServicio = ObtenerGeneralesProductosServicio();
  
  late GeneralesProductos generalesproductosModel;

  Future<GeneralesProductos> getGeneralesProductos() async{

    generalesproductosModel = await _obtenerGeneralesProductosServicio.getGeneralesProductosList();

    return generalesproductosModel;

  }

}