import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../data/get_user_name.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}
// Esta es la página principal, cuando iniciamos sesion con nuestro usuario, y donde van a aparecer los usuarios de nuestra base de datos
class _homepageState extends State<homepage> {
  final user = FirebaseAuth.instance.currentUser!;
  List<String> docIds = [];

  Future getDocId() async {
    //Tener persistencia en nuestros datos es una realidad que poco a poco en nuestras aplicaciones deben ir promoviendo y/o adquiriendo. Ahora vamos a darle persistencia a nuestros datos a Firebase usando Cloud Firestore.
    await FirebaseFirestore.instance
        .collection('cuentas')
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              print(document.reference);
              docIds.add(document.reference.id);
            }));
  }

  @override
  void initState() {
    //Se llama cuando el objeto se inserta en el árbol, exactamente 1 vez por componente. Este método es muy útil,
    getDocId();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text(
            'Inicio Sesión ${user.email!}',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            //damos estilo a nuestro crud tanto con nuestro firebase, y nuestras formas de generar acciones.
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
            child: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: FutureBuilder(
                    future: getDocId(),
                    builder: (context, snapshot) {
                      return ListView.builder(
                        itemCount: docIds.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: GetUserName(documentId: docIds[index]),
                              tileColor: Colors.grey[200],
                            ),
                          );
                        },
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
