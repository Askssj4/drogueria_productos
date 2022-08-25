import 'package:flutter/material.dart';
import 'package:drogueria_productos_pie/json_pruebas/json_filas_prueba.dart';
import 'package:drogueria_productos_pie/model/model_productos.dart';

class TablaGeneral extends StatefulWidget {
  /* List<String> columnasIngresadas;
  List<String> filasIngresadas; */

  List<String> columnasIngresadas2 = ["columna 1", "columna 2", "columna 3", "columna 4"];
  List<String> filasIngresadas2 = ["fila 1", "fila 2", "fila 3"];

  @override
  State<TablaGeneral> createState() => _TablaGeneralState();
}

class _TablaGeneralState extends State<TablaGeneral> {
  late List<productosNegociacion> prueba;
  int? sortColumnIndex;
  bool isAscending = false;

  @override
  void initState() {
    super.initState();

    prueba = List.of(productosPrueba);
  }



  @override
  Widget build(BuildContext context) {
    return buildDataTable(widget.columnasIngresadas2, prueba, sortColumnIndex, isAscending);
  }
}

Widget buildDataTable(List<String> columns, List<productosNegociacion> cells, int? sortColumnIndex, bool isAscending){
  /* final columnas = ["1", "2", "3"] */
  return DataTable(columns: getColumns(columns/* ,sortColumnIndex, isAscending */), rows: getRows(cells),
      sortColumnIndex: sortColumnIndex,);
}

List<DataColumn> getColumns(List<String> columns/* , int? index, bool ascendente */)=> columns.map((String column)=> DataColumn(label: Text(column), /* onSort: onSort(columns, index, ascendente ) */)).toList();


List<DataRow> getRows(List<productosNegociacion> cells) => cells.map((productosNegociacion cell) {
        final cells = [cell.nombreProducto, cell.presentacion, cell.tamanho, cell.estado];

        return DataRow(cells: getCells(cells));
      }).toList();

List<DataCell> getCells(List<dynamic> cells) => cells.map((data)=>DataCell(Text('$data'))).toList();
/* 
onSort(List<String> columns,int? columnIndex, bool ascending) {
    if (columnIndex == 0) {
      columns.sort((user1, user2) =>
          compareString(ascending, user1.firstName, user2.firstName));
    } else if (columnIndex == 1) {
      columns.sort((user1, user2) =>
          compareString(ascending, user1.lastName, user2.lastName));
    } else if (columnIndex == 2) {
      columns.sort((user1, user2) =>
          compareString(ascending, '${user1.age}', '${user2.age}'));
    }

    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
    });
  } */
  

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);
