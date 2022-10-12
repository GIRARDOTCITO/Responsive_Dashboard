import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    //al poner el responsive en el deskop, entonces vamos a ver cada una de las variables en el con el estilo y los mismos valores de la lista y las cajas
    return Scaffold(
        appBar: myAppBar,
        backgroundColor: myDefaultBackground,
        body: Row(children: [
          myDrawer,
          Expanded(
            flex: 3,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return const MyBox();
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return const MyTile();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: const [Expanded(child:
              Image(image: AssetImage('assets/publicidad.jpg')),
            )],
          ))
        ]));
  }
}
