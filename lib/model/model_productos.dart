import 'package:flutter/cupertino.dart';

class productosNegociacion {
  final String nombreProducto;
  final String presentacion;
  final int tamanho;
  final String estado;
  final Text operacion;

  const productosNegociacion({
    required this.nombreProducto,
    required this.presentacion,
    required this.tamanho,
    required this.estado,
    required this.operacion,
  });

  productosNegociacion copy({
    String? nombreProducto,
    String? presentacion,
    int? tamanho,
    String? estado,
  }) =>
      productosNegociacion(
        nombreProducto: nombreProducto ?? this.nombreProducto,
        presentacion: presentacion ?? this.presentacion,
        tamanho: tamanho ?? this.tamanho,
        estado: estado ?? this.estado,
        operacion: operacion,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is productosNegociacion &&
          runtimeType == other.runtimeType &&
          nombreProducto == other.nombreProducto &&
          presentacion == other.presentacion &&
          tamanho == other.tamanho &&
          estado == other.estado&&
          operacion == other.operacion;

  @override
  int get hashCode => nombreProducto.hashCode ^ presentacion.hashCode ^ tamanho.hashCode ^ estado.hashCode ^ operacion.hashCode;
}