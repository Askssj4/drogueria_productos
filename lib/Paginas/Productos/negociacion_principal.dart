import 'package:drogueria_productos_pie/Widgets/image_slider.dart';
import 'package:drogueria_productos_pie/Widgets/tabla_general.dart';
import 'package:drogueria_productos_pie/constantes.dart';
import 'package:drogueria_productos_pie/responsive/tablet_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_scaffold_nullsafe/responsive_scaffold.dart';

import '../../responsive/desktop_scaffold.dart';
import '../../responsive/mobile_scaffold.dart';
import '../../responsive/responsive_layout.dart';
import 'package:flutter/services.dart';
import 'package:multiselect/multiselect.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:get/get.dart';

import 'agregar_productos.dart';

class NegociacionPricipal extends StatefulWidget {
  const NegociacionPricipal({Key? key}) : super(key: key);

  @override
  State<NegociacionPricipal> createState() => _NegociacionPricipalState();
}

class _NegociacionPricipalState extends State<NegociacionPricipal> {
  List<dynamic> encabezadosTabla = [
    {"N°", 200},
    {"Nombre de producto", 200},
    {"Presentación", 200},
    {"Tamaño", 200},
    {"Estado", 200},
    {"Operación", 200},
  ];

  List<Widget> encabezadosTablas() {
    return [
      _getTitleItemWidget('N°', 350),
      _getTitleItemWidget('Nombre de producto', 350),
      _getTitleItemWidget('Presentación', 350),
      _getTitleItemWidget('Tamaño', 350),
      _getTitleItemWidget('Estado', 350),
      _getTitleItemWidget("Operación", 350)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarGeneral,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              /* padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(20.0),
              constraints: BoxConstraints(
                  maxHeight: double.infinity, maxWidth: double.infinity), */

              child: Column(
                children: [
                  Container(
                    child: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              ElevatedButton(
                                onPressed: () => {Get.to(AgregarProductos())},
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.green[300]),
                                child: const Text('Agregar Producto'),
                              )
                            ]),
                          ]),
                    ),
                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.all(20.0),
                    color: Colors.red,
                    constraints: BoxConstraints(
                        maxHeight: double.infinity, maxWidth: double.infinity),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                    color: Colors.red,
                    child: Column(
                      children: [
                        Row(children: [TablaGeneral()])
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

Widget _getTitleItemWidget(String label, double width) {
  return Container(
    child: Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
    width: width,
    height: 56,
    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
    alignment: Alignment.centerLeft,
  );
}
