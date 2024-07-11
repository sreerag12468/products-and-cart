import 'package:flutter/material.dart';
import 'package:prodcartyt/const.dart';
import 'package:prodcartyt/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: _appBar(context),
      body: _buildUI(context),
    );
  }

  
PreferredSizeWidget _appBar(BuildContext context){
  return AppBar(
      title: Text("cart page"),
      backgroundColor: Colors.orange,

      actions: [
        IconButton(onPressed: (){
          Navigator.popAndPushNamed(context, "/products");
        }, icon: Icon(Icons.card_travel))
      ],
      
       
      );
}

  Widget _buildUI(BuildContext context) {
    return Consumer<CartProvider>(builder: (context, provider, _) {
      return Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.80,
            child: ListView.builder(
              itemCount: provider.items.length,
              itemBuilder: (context, index) {
                Product product = provider.items[index];
                return ListTile(
                  title: Text(product.name),
                  onLongPress: () {
                    provider.remove(product);
                },
              );
            }

          
          ))
        ],
      );
     });
     }
  }




  
      