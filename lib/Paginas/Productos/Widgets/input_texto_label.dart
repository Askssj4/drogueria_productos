import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTextoLabel extends StatefulWidget {
  String errorTexto;
  String placeHolderVacio;
  String labelIngresado;
  bool textArea;
  bool esNumero;

  InputTextoLabel(
    this.errorTexto,
    this.placeHolderVacio,
    this.labelIngresado,
    this.textArea,
    this.esNumero,
    {Key? key}) : super(key: key);

  @override
  State<InputTextoLabel> createState() => _InputTextoLabelState();
}

class _InputTextoLabelState extends State<InputTextoLabel> {
  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  SizedBox(
                    width: 300,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
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
                        widget.esNumero==true?
                        (
                          TextFormField(
                              keyboardType:
                                  TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter
                                    .digitsOnly
                              ],
                              decoration: InputDecoration(
                                border:
                                    OutlineInputBorder(),
                                hintText:
                                    widget.placeHolderVacio,
                              ),
                              onChanged: (value) =>
                                  {print(value)},
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty) {
                                  return widget.errorTexto;
                                }
                                return null;
                              },
                            )
                        ):(
                          TextFormField(
                          maxLines: widget.textArea!=false?(3):(null),
                          keyboardType:
                              TextInputType.multiline,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText:
                                widget.placeHolderVacio,
                          ),
                          onChanged: (value) =>
                              {print(value)},
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty) {
                              return widget.errorTexto;
                            }
                            return null;
                          },
                        )
                        )
                      ],
                    ),
                  ),
                ],
              );
  }
}