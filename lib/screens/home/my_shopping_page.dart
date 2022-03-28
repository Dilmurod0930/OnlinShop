import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:onlineshop/core/constants/color_const.dart';
import 'package:onlineshop/screens/pages/online_shop_login_page.dart';



class HomeShopPage extends StatelessWidget {
  const HomeShopPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.blueColor,
      body: Column(children: [ 
      const  SizedBox(height: 35,),
        Stack(
          children: [
            Container(
              color: ColorConst.blueColor,
            ),
            Positioned(
              child: Column(
                children: [
                  const AutoSizeText(
                    "Find your \nGadget",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.48,
                        width: MediaQuery.of(context).size.width * 1,
                        child: Image.asset("assets/start.png"),
                      ),
                      // Positioned(
                      //   top: MediaQuery.of(context).size.height * 0.4,
                      //   child: Image.asset("assets/color.png"),
                      // ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.08),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: ColorConst.whiteColor,
                        ),
                        child: const Text(
                          "Get started",
                          style: TextStyle(color: ColorConst.blueColor),
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  OnlinLoginPage()),
                              (route) => false);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),],)
      
    );
  }
}