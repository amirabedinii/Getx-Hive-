import 'package:e_commercapp_getx_hive/services/ThemeService.dart';
import 'package:e_commercapp_getx_hive/views/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/constans.dart';
import '../contorollers/ThemeAndLogincontroller.dart';
import '../contorollers/Usercontoroller.dart';
import '../services/ThemeService.dart';
import 'Homeview.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final userCon = Get.find<Usercontoroller>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String? _emailerror;
  String? _passworderror;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 205, 172),
              Color.fromARGB(255, 0, 205, 172),
              Color.fromARGB(255, 0, 200, 200)
            ],
            stops: [0.3, 0.6, 0.9],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (text) => setState(() {
                  _emailerror = null;
                }),
                controller: _emailController,
                decoration: InputDecoration(
                  label: const Text(
                    "ایمیل",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  errorText: _emailerror,
                  hintText: "ایمیل خود را وارد کنید .",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.cyanAccent,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.cyanAccent,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (text) => setState(() {
                  _passworderror = null;
                }),
                controller: _passwordController,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  label: const Text(
                    "رمز عبور",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  errorText: _passworderror,
                  hintText: "رمز عبور باید شامل حداقل هشت کاراکتر باشد.",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.cyanAccent,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.cyanAccent,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  if (_emailController.text.isNotEmpty &&
                      _passwordController.text.isNotEmpty) {
                    if (_emailController.text == userCon.user.value.email &&
                        _passwordController.text == userCon.user.value.password) {
                      Get.off(HomeView());
                    }
                  } else if (!(_emailController.text ==
                      userCon.user.value.email)) {
                    setState(() {
                      _emailerror = "ایمیل وارد شده صحیح نیست";
                    });
                  } else if (!(_passwordController.text ==
                      userCon.user.value.password)) {
                    setState(() {
                      _passworderror = "رمز عبور وارد شده صحیح نیست";
                    });
                  }
                },
                child: Text(
                  "ورود",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                color: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Get.off(SignUp());
                },
                child: Text(
                  "برگشت به ثبت نام",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
