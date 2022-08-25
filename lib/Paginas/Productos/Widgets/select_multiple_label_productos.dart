import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';
import '../../../Widgets/select_multiple.dart';

class SelectMultipleLabel extends StatefulWidget {
  List<String> opcionesAgregadas;
  String? placeHolderVacio;
  String labelIngresado;

  SelectMultipleLabel(
    this.opcionesAgregadas,
    this.placeHolderVacio,
    this.labelIngresado,
    {Key? key}) : super(key: key);

  @override
  State<SelectMultipleLabel> createState() => _SelectMultipleLabelState();
}

class _SelectMultipleLabelState extends State<SelectMultipleLabel> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          SizedBox(
            width: 300,
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  widget.labelIngresado,
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
                SelectMultiple
                (widget.opcionesAgregadas,
                    widget.placeHolderVacio)
              ],
            ),
          )
        ]
    );
  }
}