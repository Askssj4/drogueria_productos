import 'package:drogueria_productos_pie/repositorio/get_generales_productos_notificador.dart';
import 'package:drogueria_productos_pie/responsive/desktop_scaffold.dart';
import 'package:drogueria_productos_pie/responsive/mobile_scaffold.dart';
import 'package:drogueria_productos_pie/responsive/responsive_layout.dart';
import 'package:drogueria_productos_pie/responsive/tablet_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:drogueria_productos_pie/Paginas/Productos/agregar_productos.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

/* class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ChangeNotifierProvider(
        lazy: false,
        create: (_)=>GeneralesProductosNotificador(),
      ))
  }
} */

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Droguería',
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
      
    );
  }
}

getTextTheme(){
    return TextTheme(
      headline3: TextStyle(
        color: Colors.black,
      ),
      headline6: TextStyle(
        color: Colors.black,
      ),
      bodyText1: TextStyle(
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        color: Colors.black,
      ),
      headline2: TextStyle(
          color: Colors.black,
      ),
    );
  }


