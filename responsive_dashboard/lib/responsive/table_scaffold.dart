import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class TableScaffold extends StatefulWidget {
  const TableScaffold({Key? key}) : super(key: key);

  @override
  State<TableScaffold> createState() => _TableScaffoldState();
}

class _TableScaffoldState extends State<TableScaffold> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //cada uno tiene un inicio de sesion en la parte derecha y esta oculto, tan solo retornamos nuestra lista y nuestras cajas
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
