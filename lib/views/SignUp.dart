import 'package:e_commercapp_getx_hive/views/Homeview.dart';
import 'package:e_commercapp_getx_hive/views/LoginVeiw.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animate_do/animate_do.dart';
import '../contorollers/ThemeAndLogincontroller.dart';
import '../contorollers/Usercontoroller.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final serviceCon = Get.find<ServiceController>();
  final userController = Get.put(Usercontoroller());
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  String? _nameerror;
  String? _emailerror;
  String? _passworderror;
  String? _confirmpassworderror;
  String? _phoneerror;
  bool showError = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Get.theme;
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Container(
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text(
                    "گلدون من برای شما",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  FadeInRight(
                    duration: Duration(milliseconds: 800),
                    child: TextField(
                      onChanged: (text) => setState(() {
                        _nameerror = null;
                      }),
                      controller: _nameController,
                      decoration: InputDecoration(
                        label: const Text(
                          "نام",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        errorText: _nameerror,
                        hintText: "نام خود را وارد کنید.",
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
                  FadeInLeft(
                    duration: Duration(milliseconds: 900),
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
                  FadeInRight(
                    duration: Duration(milliseconds: 1000),
                    child: TextField(
                      onChanged: (text) => setState(() {
                        _passworderror = null;
                      }),
                      controller: _phoneController,
                      decoration: InputDecoration(
                        label: const Text("شماره تلفن",
                            style: TextStyle(
                              color: Colors.black,
                            )),
                        errorText: _phoneerror,
                        hintText: "شماره تلفن خود را وارد کنید.",
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
                  FadeInLeft(
                    duration: Duration(milliseconds: 1100),
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
                  FadeInRight(
                    duration: Duration(milliseconds: 1200),
                    child: TextField(
                      onChanged: (text) => setState(() {
                        _confirmpassworderror = null;
                      }),
                      controller: _confirmPasswordController,
                      decoration: InputDecoration(
                        label: const Text(
                          "تکرار رمز عبور",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.cyanAccent,
                          ),
                        ),
                        hintText: " رمز عبور را دوباره وارد کنید.",
                        hintStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        errorText: _confirmpassworderror,
                        alignLabelWithHint: true,
                        enabled: true,
                        disabledBorder: OutlineInputBorder(
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
                  FadeInDown(
                    duration: Duration(milliseconds: 1300),
                    child: MaterialButton(
                      onPressed: () async {
                        await registerUser();
                      },
                      child: const Text(
                        "ثبت نام",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  FadeInDown(
                    duration: Duration(milliseconds: 1300),
                    child: MaterialButton(
                      onPressed: () async {
                        Get.to(LoginView());
                      },
                      child: const Text(
                        "قدیم ثبت نام کردید ؟",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  Future registerUser() async {
    if (_nameController.text.isEmpty) {
      setState(() {
        _nameerror = "نام خود را وارد کنید.";
        showError = true;
      });
    } else if (!RegExp(r"^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$")
        .hasMatch(_emailController.text)) {
      setState(() {
        _emailerror = "ایمیل صحیح نیست.";
      });
    } else if (_phoneController.text.isEmpty) {
      setState(() {
        _phoneerror = "شماره تلفن خود را وارد کنید.";
      });
    } else if (!RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$")
        .hasMatch(_passwordController.text)) {
      setState(() {
        _passworderror = "رمز عبور خود را وارد کنید.";
      });
    } else if (!(_confirmPasswordController.text == _passwordController.text)) {
      setState(() {
        _confirmpassworderror = "رمز عبور خود را دوباره وارد کنید.";
      });
    } else if (_passwordController.text != _confirmPasswordController.text) {
      setState(() {
        _confirmpassworderror = "رمز عبور با تکرار آن مطابقت ندارد.";
      });
    } else {
      setState(() {
        _nameerror = null;
        _emailerror = null;
        _phoneerror = null;
        _passworderror = null;
        _confirmpassworderror = null;
      });
      await userController.registerUser(
        _nameController.text,
        _emailController.text,
        _phoneController.text,
        _passwordController.text,
      );
      await serviceCon.changeloogedin();
      Get.off(HomeView());
    }
  }
}
