import 'package:flutter/material.dart';
import 'package:onlineshop/core/constants/color_const.dart';
import 'package:onlineshop/provider/bottom_navigator_provider.dart';
import 'package:onlineshop/provider/search_bar_provider.dart';
import 'package:onlineshop/screens/home_shop_page.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    List pages = [
      HomeShopPage(),
      

    ];
    return Scaffold(
      body:
                  pages[context.watch<BottonNavigatorPr>().currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.shifting,
                backgroundColor: Colors.transparent,
                selectedItemColor: ColorConst.whiteColor,
                unselectedItemColor:  ColorConst.iconColor,
                currentIndex:context.watch<BottonNavigatorPr>().currentIndex,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite_outline), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart_outlined), label: ""),
                ],
                onTap: (v) {
                  FocusScope.of(context).unfocus();
                  context.read<BottomNavigationProvider>().changePages(v);
                  context.read<SearchBarProvider>().clearController();
                },
              ),
    );
  }
}
