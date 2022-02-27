import 'package:flutter/material.dart';
import 'package:workshop/constant.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool showPassword = true;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(color: lightColor, fontSize: 64),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  color: seconderyColor,
                  borderRadius: BorderRadius.circular(30)),
              child: TextFormField(
                cursorColor: primaryColor,
                decoration: InputDecoration(
                    icon: Icon(Icons.person, color: primaryColor),
                    hintText: "Your Email",
                    border: InputBorder.none),
              )),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  color: seconderyColor,
                  borderRadius: BorderRadius.circular(30)),
              child: TextFormField(
                cursorColor: primaryColor,
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock, color: primaryColor),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        icon: Icon(
                            showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: primaryColor)),
                    hintText: "Password",
                    border: InputBorder.none),
              )),
        ],
      ),
    );
  }
}
