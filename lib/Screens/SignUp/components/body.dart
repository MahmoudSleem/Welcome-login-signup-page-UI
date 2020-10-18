import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wilcome_login/Screens/Login/login_screen.dart';
import 'package:wilcome_login/Screens/SignUp/components/background.dart';
import 'package:wilcome_login/Screens/SignUp/components/social_icon.dart';
import 'package:wilcome_login/Screens/Welcome/welcome_screen.dart';
import 'package:wilcome_login/components/already_have_an_account_acheck.dart';
import 'package:wilcome_login/components/rounded_button.dart';
import 'package:wilcome_login/components/rounded_input_faild.dart';
import 'package:wilcome_login/components/rounded_password_field.dart';
import 'package:wilcome_login/constants.dart';

import '../signup_screen.dart';
import 'or_driver.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SIGNUP",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.43,
              width: 0.5,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            RoundedInputField(
              hintText: "YOUR EMAIL",
              onChange: (Value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            AlreadyHaveAnAccountCheak(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  icon: 'assets/icons/facebook.svg',
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return WelcomeScreen();
                    }));
                  },
                ),
                SocialIcon(
                  icon: 'assets/icons/twitter.svg',
                  press: ()  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return WelcomeScreen();
                    }));
                  },
                ),
                SocialIcon(
                  icon: 'assets/icons/google-plus.svg',
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return WelcomeScreen();
                    }));
                  },
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}


