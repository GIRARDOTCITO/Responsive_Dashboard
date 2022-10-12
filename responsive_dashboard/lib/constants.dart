import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey[300];

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
  title:  const Center(child:  Text('P I A N T A')),
  actions: const [
    Image(image: AssetImage('assets/img_2.png'), width: 50, height: 50,),
  ],
);
var myDrawer = Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: const BoxDecoration(
          color: Colors.green,
        ),
        child: Column(
          children: const [
            Text(
              ' U S U A R I O ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
              size: 70.0,
            ),

          ],
        ),
      ),
      const ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.black,
          size: 30.0,

        ),

        title: Text('P R I N C I P A L'),

      ),
      const ListTile(
        leading: Icon(
          Icons.mail,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('M E N S A J E S'),
      ),
      const ListTile(
        leading: Icon(
          Icons.settings,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('C O N F I G U R A C I O N'),
      ),
      const ListTile(
        leading: Icon(
          Icons.favorite,
          color: Colors.black,
          size: 30.0,

        ),
        title: Text('F A V O R I T O S'),
      ),
      const ListTile(
        leading: Icon(
          Icons.library_books,
          color: Colors.black,
          size: 30.0,

        ),
        title: Text('C O M E N T A R I O S'),
      ),
      const ListTile(
        leading: Icon(
          Icons.help,
          color: Colors.black,
          size: 30.0,

        ),
        title: Text('A Y U D A'),
      ),
      const ListTile(
        leading: Icon(
          Icons.logout,
          color: Colors.black,
          size: 30.0,

        ),
        title: Text('S A L I R'),
      ),
    ],
  ),
);