import 'package:drogueria_productos_pie/Paginas/Productos/Widgets/input_texto_label.dart';
import 'package:drogueria_productos_pie/Widgets/image_slider.dart';
import 'package:drogueria_productos_pie/Widgets/select_multiple.dart';
import 'package:drogueria_productos_pie/Paginas/Productos/Widgets/select_multiple_label_productos.dart';
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

class AgregarProductos extends StatefulWidget {
  const AgregarProductos({Key? key}) : super(key: key);

  @override
  State<AgregarProductos> createState() => _AgregarProductos();
}

class _AgregarProductos extends State<AgregarProductos> {
  List<String> presentacionSeleccionada = [];
  String clasificacionSeleccionada = "One";
  String viaAdministracionSeleccionada = "One";
  bool EsDescontinuado = false;

  List<String> opcionesPresentacion = ["1", "2", "3"];
  List<String> opcionesClasificacion = ["4", "5", "6"];
  List<String> opcionesViaAdministracion = ["7", "8", "9"];

  List<String> opcionesUnidadMedida = ["10", "11", "12"];
  List<String> opcionesEnvasePrimario = ["14", "15", "16"];
  List<String> opcionesEnvaseSecundario = ["17", "18", "19"];

  List<String> opcionesIndicaciones = ["20", "21", "22"];
  List<String> opcionesContraindicaciones = ["23", "24", "25"];
  List<String> opcionesPrincipiosActivos = ["26", "27", "28"];
  List<String> opcionesEfectosSecundarios = ["29", "30", "31"];

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarGeneral,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(children: <Widget>[
              //Texto inicial
              Container(
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text(
                            "Creación de productos para:",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ]),
                      ]),
                ),
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                constraints: BoxConstraints(
                    maxHeight: double.infinity, maxWidth: double.infinity),
              ),
              //Primeros selects
              Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                  constraints: BoxConstraints(
                      maxHeight: double.infinity, maxWidth: double.infinity),
                  /* color: Colors.red, */
                  child: Row(children: [
                    Column(
                      children: [
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InputTextoLabel("Favor ingresar un nombre", "Ingrese un nombre", "Nombre del producto:", false, false),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SelectMultipleLabel(opcionesPresentacion, "Seleccione una o más presentaciones", "Presentación"),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SelectMultipleLabel(opcionesClasificacion, "Seleccione una o más clasificaciones", "Clasificación"),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SelectMultipleLabel(opcionesViaAdministracion, "Seleccione una o más vías de administración", "Vía de administración"),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 300,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Descontinuado: ",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 300,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Checkbox(
                                                value: EsDescontinuado,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    EsDescontinuado = value!;
                                                  });
                                                })
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ])),
              Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                  constraints: BoxConstraints(
                      maxHeight: double.infinity, maxWidth: double.infinity),
                  /* color: Colors.red, */
                  child: Row(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 600,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InputTextoLabel("Favor ingresar un tamaño correcto", "Ingrese un tamaño", "Tamaño: ", false, true),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 600,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InputTextoLabel("Favor ingrese una cantidad correcta", "Ingrese una cantidad", "Cantidad: ", false, true) 
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ]),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SelectMultipleLabel(opcionesUnidadMedida, "Seleccione una o más unidades de medida", "Unidad de medida"),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      SelectMultipleLabel(opcionesEnvasePrimario, "Seleccione un envase primario", "Envase primario"),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      SelectMultipleLabel(opcionesEnvaseSecundario, "Seleccione un envase secundario", "Envase secundario"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              Container(
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                constraints: BoxConstraints(
                    maxHeight: double.infinity, maxWidth: double.infinity),
                /* color: Colors.red, */
                child: Row(children: [
                  Column(
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InputTextoLabel("Favor ingresar una descripción", "Ingrese una descripción", "Descripción", true, false),
                                const SizedBox(
                                  height: 15,
                                ),
                                SelectMultipleLabel(opcionesIndicaciones, "Seleccione una o más indicaciones", "Indicaciones"),
                                const SizedBox(
                                  height: 15,
                                ),
                                SelectMultipleLabel(opcionesContraindicaciones, "Seleccione una o más contraindicaciones", "Contraindicaciones"),
                                const SizedBox(
                                  height: 15,
                                ),
                                SelectMultipleLabel(opcionesPrincipiosActivos, "Seleccione uno o más principios activos", "Principios activos")
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SelectMultipleLabel(opcionesEfectosSecundarios, "Seleccione uno o más efectos secundarios", "Efectos secundarios")
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ]),
              ),
              Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                  constraints: BoxConstraints(
                      maxHeight: double.infinity, maxWidth: double.infinity),
                  /* color: Colors.red, */
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 200,
                              height: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () => {print("click")},
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue[800]),
                                    child: const Text('Fotografía'),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              height: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                              content: Text('Validando datos')),
                                        );
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.green),
                                    child: const Text('Guardar'),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ]))
            ]),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
