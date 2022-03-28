import 'package:flutter/material.dart';
import 'package:onlineshop/core/constants/color_const.dart';
import 'package:onlineshop/main.dart';
import 'package:onlineshop/provider/show_password_provider.dart';
import 'package:onlineshop/screens/home_shop_page.dart';
import 'package:onlineshop/screens/mainPage/home_page.dart';
import 'package:onlineshop/screens/pages/Create_Forim_Field/create_account_form_fild.dart';
import 'package:onlineshop/screens/pages/login_page.dart';
import 'package:provider/provider.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return ChangeNotifierProvider<ShowPasswordProvider>(
      create: (context) => ShowPasswordProvider(),
      builder: (context, child) => Scaffold(
        body: Container(
          color: ColorConst.iconColor,
          child: Stack(
            children: [
              Container(
                color: ColorConst.blueColor,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.1,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.02),
                      child: const Text(
                        "Create your\naccount",
                        style: TextStyle(
                            color: ColorConst.modeColor,
                            fontSize: 60,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.73,
                      decoration: const BoxDecoration(
                        color: ColorConst.modeColor,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.07,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Create account",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            CreateAccountFormField(
                              formKey: _formKey,
                              nameController: _nameController,
                              emailController: _emailController,
                              passwordController: _passwordController,
                            ),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * 0.07,
                                ),
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: ColorConst.blueColor,
                                    ),
                                    child: Text(
                                      "Create Account",
                                      style: TextStyle(
                                        color: ColorConst.whiteColor,
                                      ),
                                    ),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        _nameController.text;
                                        _emailController.text;
                                        _passwordController.text;
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Homepage (),
                                            ),
                                            (route) => false);
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
