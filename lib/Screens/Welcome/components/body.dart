import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wilcome_login/Screens/Login/login_screen.dart';
import 'package:wilcome_login/Screens/SignUp/signup_screen.dart';
import 'package:wilcome_login/components/rounded_button.dart';
import 'package:wilcome_login/constants.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "WELCOME TO EDU",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            'assets/icons/chat.svg',
            height: size.height * 0.45,
          ),
          SizedBox(
            height: 10,
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
          RoundedButton(
            text: "SIGNUP",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }),
              );
            },
            color: KPrimaryLightColor,
            textColor: Colors.black,
          ),
        ],
      ),
    ));
  }
}
