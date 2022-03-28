import 'package:flutter/material.dart';
import 'package:onlineshop/core/constants/color_const.dart';
import 'package:onlineshop/provider/show_password_provider.dart';
import 'package:onlineshop/screens/pages/login_page.dart';
import 'package:provider/provider.dart';

class OnlinLoginPage extends StatelessWidget {
  const OnlinLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _emilCintroller = TextEditingController();
    TextEditingController _emilPasswordController = TextEditingController();
    final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();
    return ChangeNotifierProvider<ShowPasswordProvider>(
      create: (context) => ShowPasswordProvider(),
      builder: (context, child) {
        return Scaffold(
          body: Container(
            color: ColorConst.blueColor,
            child: Stack(
              children: [
                Container(
                    // color: ColorConst.whiteColor,
                    ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.077,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.088),
                        child: const Text(
                          "Welcom \nback",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 60,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.85,
                        decoration: BoxDecoration(
                          color: ColorConst.whiteColor,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.07),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                              LoginPage(
                                  fromKey: _fromKey,
                                  emilController: _emilCintroller,
                                  emailPassworController:
                                      _emilPasswordController)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
