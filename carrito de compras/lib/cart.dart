import '../main.dart';
import 'package:flutter/material.dart';






class shopping_cart extends StatefulWidget {
  final List<listproducts> _cart;

  const shopping_cart(this._cart, {super.key});

  @override
  _shopping_cartState createState() => _shopping_cartState(_cart);

}
class _shopping_cartState extends State<shopping_cart> {

  _shopping_cartState(this._cart);
  //creamos la funcion cart la cual usara los objetos de ListaProductos para retornar los productos creados
  List<listproducts> _cart;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar de la pagina
      //contiene un boton en el lado izquierdo para regresar a la pagina principal
      appBar: AppBar(
        title: const Text("Products Catalog"),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {
                _cart.length;
                //El metodo setState La devolución de llamada proporcionada se llama inmediatamente sincrónicamente. No debe devolver un futuro ( la devolución de llamada no puede ser async), desde entonces sería no está claro cuándo se estaba estableciendo el estado.
              });
            }),
      ),
      body:
      //usamos ListView para la creacion de la lista principal de productos, los cuales apareceran en nuestro carrito de compras
      ListView.builder(
          itemCount: _cart.length,
          itemBuilder: (context, index) {
            //cada producto estara dentro de una card
            return Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
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
                          _cart[index].image.toString(),
                        ),

                      ),
                    ),
                    //Dentro del Exopanden encontraremos el titulo principal del producto, y la imagen de forma circular.
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Text(
                                _cart[index].name.toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //Creamos los botones de añadir y remover, los cuales como lo indican remueven un producto o agregan otro. Mostrando la cantidad
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.remove_circle)),
                    Text('$_cart'),
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.add_circle))

                  ],
                ),
              ),
            );
          }),
    );


  }
}


