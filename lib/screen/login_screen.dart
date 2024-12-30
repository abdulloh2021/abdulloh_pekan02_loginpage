import 'package:abdulloh_pekan02_loginpage/widget/custom_button.dart';
import 'package:abdulloh_pekan02_loginpage/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/HP_logo_2012.svg/768px-HP_logo_2012.svg.png",
                  width: 60,
                  height: 60,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Manage your printer",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xffA7A8B3)),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Username",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextfield(
                  hintText: "Write your username",
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextfield(
                  hintText: "Write your password",
                  isPassword: true,
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child: CustomButton(
                    isPrimary: true,
                    text: "Login",
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: CustomButton(
                    isPrimary: false,
                    text: "Sign Up",
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
