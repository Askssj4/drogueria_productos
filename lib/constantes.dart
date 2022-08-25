import 'package:drogueria_productos_pie/Paginas/Productos/agregar_productos.dart';
import 'package:drogueria_productos_pie/Paginas/Productos/negociacion_principal.dart';
import 'package:drogueria_productos_pie/Widgets/tabla_general.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var appBarGeneral =  AppBar(
        title: Text("Droguería"),
        backgroundColor: Colors.lightBlue[300],
        elevation: 5,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle_rounded),
            onPressed: (() => {}),
            )
        ],
      );
var drawerGeneral = Drawer(
        child: Column(
          children: [
          DrawerHeader(child: Image.network("https://yt3.ggpht.com/ytc/AMLnZu_Gzplb7-La-cg7D5UvyJ5HetaAKcx0GsdaN35jjA=s900-c-k-c0x00ffffff-no-rj", width: 100,)),
          /* ListTile(
            leading: Icon(Icons.medical_information),
            title: Text("Productos"),
            onTap: () => {Get.to(AgregarProductos())},
          ), */
          ListTile(
            leading: Icon(Icons.medical_information),
            title: Text("Negociaciones"),
            onTap: () => {Get.to(NegociacionPricipal())},
          )
        ]),
      );

var colorFondoGeneral = Colors.white;