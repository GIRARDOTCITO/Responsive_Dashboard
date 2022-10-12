import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';



class fourk_scaffold extends StatefulWidget {
  const fourk_scaffold({Key? key}) : super(key: key);

  @override
  State<fourk_scaffold> createState() => _fourk_scaffold();
}

class _fourk_scaffold extends State<fourk_scaffold> {
  @override
  Widget build(BuildContext context) {
    //al poner el responsive en el 4k,  entonces vamos a ver cada una de las variables en el con el estilo y los mismos valores de la lista y las cajas
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
                Image(image: AssetImage('assets/publicidad.webp')),
                )],
              ),
          ),
          Drawer(
            //tambien agregamos un drawer el cual contiene opciones de inicio de sesion y registro.
            child: ListView(
              // Importante: elimine cualquier padding del ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('MENU OPCIONAL'),
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  trailing: Icon(Icons.app_registration),
                  title: Text('REGISTRO'),
                  onTap: () {
                    // Actualiza el estado de la aplicación
                    // ...
                  },
                ),
                ListTile(
                 trailing: Icon(Icons.verified_user),
                  title: Text('INICIO SESION'),
                  onTap: () {
                    // Actualiza el estado de la aplicación
                    // ...
                  },
                ),
              ],
            ),
          ),

        ]),

    );

  }

}
