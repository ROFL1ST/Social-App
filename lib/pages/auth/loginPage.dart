// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:social_media_app/common/constant.dart';
import 'package:social_media_app/pages/auth/component/RoundedButton.dart';
import 'package:social_media_app/pages/auth/component/background.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: kTitleTextstyle,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Image.asset(
                "assets/image/loginpng@3x Dark.png",
                height: size.height * 0.35,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              TextFieldContainer(
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    hintText: "Username",
                    border: InputBorder.none,
                  ),
                ),
              ),
              TextFieldContainer(
                child: TextField(
                  autocorrect: false,
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    suffixIcon: hidePassword
                        ? IconButton(
                            onPressed: _togglePassword,
                            icon: Icon(Icons.visibility_off))
                        : IconButton(
                            onPressed: _togglePassword,
                            icon: Icon(Icons.visibility)),
                    icon: Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    ),
                    hintText: "Password",
                    border: InputBorder.none,
                  ),
                ),
              ),
              RoundedButton(
                text: "Login",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _togglePassword() {
    print(hidePassword);
    setState(() {
      hidePassword = !hidePassword;
    });
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
