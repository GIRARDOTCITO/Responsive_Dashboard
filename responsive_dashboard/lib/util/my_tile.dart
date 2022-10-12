import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //En esta parte podemos ver cada uno de los archivos registrados en nuestro dash board, con su respectiva imagen y estilo
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: const [
          Card( child:
          ListTile(
            contentPadding: EdgeInsets.all(8.0),
            leading: CircleAvatar(
              backgroundImage: AssetImage("rosa.jpg"),
            ),
            title: Text('R O S A',
            textAlign: TextAlign.center),
            trailing: Icon(Icons.favorite),
          ),
          ),
          Card( child:
          ListTile(
            contentPadding: EdgeInsets.all(8.0),
            leading: CircleAvatar(
              backgroundImage: AssetImage("orquidea.jpg"),
            ),
            title: Text('O R Q U I D E A'),
            trailing: Icon(Icons.favorite),
          ),
          ),
          Card(child:
          ListTile(
            contentPadding: EdgeInsets.all(8.0),
            leading: CircleAvatar(
              backgroundImage: AssetImage("kalanchoe.jpg"),
            ),
            title: Text('K A L A N C H O E'),
            trailing: Icon(Icons.favorite),
          ),
          ),
          Card(child:
          ListTile(
            contentPadding: EdgeInsets.all(8.0),
            leading: CircleAvatar(
              backgroundImage: AssetImage("anturio.jpg"),
            ),
            title: Text('A N T U R I O'),
            trailing: Icon(Icons.favorite),
          ),
          ),
          Card(child:
          ListTile(
            contentPadding: EdgeInsets.all(8.0),
            leading: CircleAvatar(
              backgroundImage: AssetImage("bonsai.jpg"),
            ),
            title: Text('B O N S A I'),
            trailing: Icon(Icons.favorite, color: Colors.red,),
          ),
          ),
          Card(child:
          ListTile(
            contentPadding: EdgeInsets.all(8.0),
            leading: CircleAvatar(
              backgroundImage: AssetImage("cactus.webp"),
            ),
            title: Text('C A C T U S'),
            trailing: Icon(Icons.favorite, color: Colors.red,),
          ),
          ),
        ],
      ),
    );
  }
}
