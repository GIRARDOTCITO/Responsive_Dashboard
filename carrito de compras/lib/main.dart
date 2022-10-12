import 'package:flutter/material.dart';
import '../cart.dart';
// JUAN SEBASTIAN GIRARDOT ANTONIO
void main() {
  runApp(const MyApp());
}

class listproducts {
  //Creamos el metodo constructor, el cual va a contener varias variables
  final String? name;
  final String? image;
  final int? code;
  late final bool? isAdd;

  listproducts(
      {required this.name,
      required this.image,
      required this.code,
      required this.isAdd});
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BUY_PRODUCTS',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const main_page(),
    );
  }
  //Creamos el header principal del proyecto y la clase principal de nuestro carrito de compras
}

class main_page extends StatefulWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  void _products() {
    var list = <listproducts>[
      //Creamos los productos por el constructor de la clase ListaProductos
      listproducts(
          name: ' H E A D P H O N E S',
          image: 'img/audifonos.jpg',
          code: 1,
          isAdd: false),
      listproducts(
          name: 'C A M E R A',
          image: 'img/camara.jpg',
          code: 2, isAdd: false),
      listproducts(
          name: 'S C R E E N',
          image: 'img/monitor.jpg',
          code: 3,
          isAdd: false),
      listproducts(
          name: 'M O U S E',
          image: 'img/mouse.jpg',
          code: 4,
          isAdd: false),
      listproducts(
          name: 'K E Y B O A R D',
          image: 'img/teclado.jpg',
          code: 5, isAdd: false),
      listproducts(
          name: 'S E T  U P',
          image: 'img/setup.jpg',
          code: 6,
          isAdd: false),
    ];

    setState(() {
      //_list recibira el listado de productos para ser utilizado en las funciones principales del codigo
      _catalog = list;
    });
  }
  //creamos la funcion lista la cual usara los objetos de ListaProductos pra la creacion de productos
  List<listproducts> _catalog = <listproducts>[];
  //Tanto _catalog, como _shoppinglist, contienen ambos el arreglo de nuestros productos, pero realmente ambos tienen diferentes funciones
  //Como _catalog este contiene cada uno de los valores datos en el metodo constructor
  final List<listproducts> _shoppinglist = <listproducts>[];
  //tanto _shoppinglist, este guarda los datos del _catalog, en una sola variable y las envia al carrito de compras

  @override
  //usamos el metodo initState para generar la lista de productos.
  void initState() {
    super.initState();
    _products();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar de la pagina
      //contiene un boton para acceder automaticamente al carrito de compras siempre y cuando
      //el cliente añada un producto si no lo añade no podra acceder al carrito
      appBar: AppBar(
        title: const Text("Products"),
        actions: [
          Row(
            children: [
              IconButton(
                  tooltip: 'purchased products',
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {
                    if (_shoppinglist.isNotEmpty) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => shopping_cart(_shoppinglist),
                        ),
                      );
                    }

                  }),
            ],
          )
        ],
      ),
      body:
          //usamos ListView para la creacion de la lista principal de productos
          ListView.builder(
              itemCount: _catalog.length,
              itemBuilder: (context, index) {
                //cada producto estara dentro de una card
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Creamos un container en el cual almacenaremos la imagen

                        Container(
                          width: 75,
                          height: 75,
                          child: CircleAvatar(
                            radius: 75,
                            backgroundImage: AssetImage(
                              _catalog[index].image.toString(),
                            ),

                          ),
                        ),

                        //Dentro del Exopanden encontraremos el titulo principaldel producto
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(bottom: 1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: Text(
                                    _catalog[index].name.toString(),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        IconButton(
                          onPressed: () {
                            //Con setState aremos el cabio de estado dentro la lista de carrito esto es para inclui
                            //los productos en la lista del carro
                            setState(() {
                              if (_catalog[index].isAdd!) {
                              } else {
                                _shoppinglist.add(_catalog[index]);
                                _catalog[index].isAdd = true;
                              }
                            });
                          },
                          icon: Icon(Icons.favorite_border),
                        ),
                      ],
                    ),

                  ),

                );

              }),
    );
  }


}
