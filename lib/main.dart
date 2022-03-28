import 'package:flutter/material.dart';
import 'package:onlineshop/routes/shopping_routes.dart';
import 'package:onlineshop/screens/home/my_shopping_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  ShoppingRoutes _shoppingRoutes = ShoppingRoutes();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    //  initialRoute: '/',
    //  onGenerateRoute: _shoppingRoutes.onGenerateRoutes,
    home: HomeShopPage(),
    );
  }
}
