import 'package:flutter/material.dart';


class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key, required this.mobileScaffold, required this.tableScaffold, required this.desktopScaffold, required this.fourk_scaffold,}) : super(key: key);
  final Widget mobileScaffold;
  final Widget tableScaffold;
  final Widget desktopScaffold;
  final Widget fourk_scaffold;

  @override
  Widget build(BuildContext context) {
    //este es el layout en el cual contiene tanto los valores de la barra izquierda
    return LayoutBuilder(
      builder: (context, constraints){
        if (constraints.maxWidth < 500){
          return mobileScaffold;
        }else if (constraints.maxWidth < 1100){
          return tableScaffold;
        }else if (constraints.maxWidth < 1280){
          return desktopScaffold;
        }else{
          return fourk_scaffold;
        }

      },
    );
  }
}
