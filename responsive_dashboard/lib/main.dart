import 'package:flutter/material.dart';
import 'package:responsive_dashboard/responsive/4k_scaffold.dart';
import 'package:responsive_dashboard/responsive/responsive_layout.dart';
import 'package:responsive_dashboard/responsive/mobile_scaffold.dart';
import 'package:responsive_dashboard/responsive/table_scaffold.dart';
import 'package:responsive_dashboard/responsive/desktop_scaffold.dart';
import 'package:responsive_dashboard/responsive/4k_scaffold.dart';



void main() {
  runApp(const MyApp());
}
//Como podemos observar tenemos nuestro dasborar el cual retorna cada una de las aplicacioens tales como android table Deskto, y pantalla grande
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tableScaffold: TableScaffold(),
        desktopScaffold: DesktopScaffold(),
        fourk_scaffold: fourk_scaffold(),
      )
    );
  }
}

