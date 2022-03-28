import 'package:flutter/material.dart';
import 'package:onlineshop/screens/home_shop_page.dart';
import 'package:onlineshop/screens/pages/create_account_page.dart';

class ShoppingRoutes {
  Route? onGenerateRoutes(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => HomeShopPage());
      case "/ceartAccount":
        return MaterialPageRoute(builder: (context) => CreateAccountPage());
    }
  }
}
