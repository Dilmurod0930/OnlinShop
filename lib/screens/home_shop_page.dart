import 'package:flutter/material.dart';
import 'package:onlineshop/core/constants/color_const.dart';
import 'package:onlineshop/provider/tab_bar_provider.dart';
import 'package:provider/provider.dart';

class HomeShopPage extends StatefulWidget {
  const HomeShopPage({ Key? key }) : super(key: key);
  @override
  State<HomeShopPage> createState() => _HomeShopPageState();
}
class _HomeShopPageState extends State<HomeShopPage> with TickerProviderStateMixin {
  late TabController _tabController;
 
  @override
  Widget build(BuildContext context) {
    _tabController = TabController(length: 4, vsync: this);
    return ChangeNotifierProvider(
      create: (context) => TabBarProvider(),
      builder: (context, child) {
        return Container(
          child: Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.03),
                  child: Text(
                    "Order online \ncollect in store",
                    style: TextStyle(
                        fontSize: 35,
                        color: ColorConst.iconColor,
                        fontWeight: FontWeight.bold),
                  ),
                  
                ),
                TabBar(
                  unselectedLabelColor: ColorConst.iconColor,
                  isScrollable: true,
                  labelColor: ColorConst.whiteColor,
                  controller: _tabController,
                  labelPadding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05),
                  indicatorColor: ColorConst.whiteColor,
                  tabs: const [
                    Tab(icon: Text("Wearable")),
                    Tab(icon: Text("Laptops")),
                    Tab(icon: Text("Phones")),
                    Tab(icon: Text("Drones")),
                  ],
                  onTap: (v) {
                    context.read<TabBarProvider>().changeIndex(v);
                  },
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03),
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.infinity,
                  // child: ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemBuilder: (context, index) {
                  //       return Container(
                  //         child: InkwelCategories(indexes: index),
                  //       );
                  //     },
                  //     itemCount: wearableNames.length),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
