import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';


class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}
class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    //al poner el responsive en el movile, entonces vamos a ver cada una de las variables en el con el estilo y los mismos valores de la lista y las cajas
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
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
    );
  }
}
