import 'package:flutter/material.dart';
import 'package:onlineshop/core/constants/color_const.dart';
import 'package:onlineshop/provider/show_password_provider.dart';
import 'package:onlineshop/screens/home_shop_page.dart';
import 'package:onlineshop/screens/pages/create_account_page.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
    required GlobalKey<FormState> fromKey,
    required TextEditingController emilController,
    required TextEditingController emailPassworController,
  })  : _fromKey = fromKey,
        _emilController = emilController,
        _emailPassworController = emailPassworController,
        super(key: key);

  final GlobalKey<FormState> _fromKey;
  final TextEditingController _emilController;
  final TextEditingController _emailPassworController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _emilController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              labelText: "Email",
            ),
            validator: (v) {
              if (v!.isEmpty) {
                return "Bo'sh kiritish mumkin emas";
              } else if (!v.contains("@gmail.com")) {
                return "To'gri email kiriting ";
              }
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          TextFormField(
            controller: _emailPassworController,
            obscureText: context.watch<ShowPasswordProvider>().show,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock_outline),
              labelText: "Password",
              suffix: IconButton(
                icon: const Icon(
                  Icons.visibility_off,
                  color: Colors.blue,
                ),
                onPressed: () {
                  context.read<ShowPasswordProvider>().showPasswordProwider();
                },
              ),
            ),
            validator: (v) {
              if (v!.isEmpty) {
                return "Bo'sh kiritish mumkin emas";
              }
            },
          ),
          const SizedBox(
            height: 35,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.07,
                    bottom: MediaQuery.of(context).size.height * 0.01),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: ColorConst.blueColor,
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(color: ColorConst.whiteColor),
                    ),
                    onPressed: () {
                      if (_fromKey.currentState!.validate()) {
                        _emilController.text;
                        _emailPassworController.text;
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeShopPage(),
                            ),
                            (route) => false);
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextButton(
                child: const Text("Create Account"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateAccountPage()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
