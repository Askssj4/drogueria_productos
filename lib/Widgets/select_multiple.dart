import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';

class SelectMultiple extends StatefulWidget {
  List<String> opcionesAgregadas;
  String? placeHolderVacio;

  SelectMultiple(
    this.opcionesAgregadas,
    this.placeHolderVacio,{
      Key? key,
    }) : super(key: key);

  @override
  _SelectMultipleState createState() => _SelectMultipleState();
}

class _SelectMultipleState extends State<SelectMultiple> {
  
  List<String> opcionesSeleccionadas = [];
  List<String> opciones = [];
  String placeHolderVacio = "";
  
  @override
  Widget build(BuildContext context) {
    return DropDownMultiSelect(
          onChanged: (List<String> x) {
            setState(() {
              opcionesSeleccionadas =x;
            });
          },
          options: widget.opcionesAgregadas,
          selectedValues: opcionesSeleccionadas,
          whenEmpty: widget.placeHolderVacio,
        );
        
  }
}