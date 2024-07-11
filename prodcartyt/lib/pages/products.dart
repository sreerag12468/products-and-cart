import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prodcartyt/provider/cart_provider.dart';
import 'package:prodcartyt/const.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _buildUI(context),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      title: Text("Product page"),
      backgroundColor: Colors.yellow,
      actions: [
        IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "/cart");
          },
          icon: Icon(Icons.production_quantity_limits),
        ),
      ],
    );
  }

    Widget _buildUI(BuildContext context) {
    return ListView.builder(
      itemCount: PRODUCTS.length,
      itemBuilder: (context, index) {
        Product product = PRODUCTS[index];
        CartProvider cartProvider = Provider.of<CartProvider>(context);
        
        return ListTile(
          leading: Container(
            height: 25,
            width: 25,
            color: product.color,
          ),
          title: Text(product.name),
          trailing: Checkbox(
            value: cartProvider.items.contains(product),
            onChanged: (value) {
              if (value == true) {
                cartProvider.add(product);
              } else {
                cartProvider.remove(product);
              }
            },
          ),
        );
      },
    );
  }
}


