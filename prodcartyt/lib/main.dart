import 'package:flutter/material.dart';
import 'package:prodcartyt/provider/cart_provider.dart';
import './pages/cart.dart';
import './pages/products.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CartProvider(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/cart": (context) => Cart(),
        "/products": (context) => Products()
      },
      initialRoute: "/products",
     
    );
  }
}

