import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wilcome_login/Screens/SignUp/signup_screen.dart';
import 'package:wilcome_login/components/already_have_an_account_acheck.dart';
import 'package:wilcome_login/components/rounded_button.dart';
import 'package:wilcome_login/components/rounded_input_faild.dart';
import 'package:wilcome_login/components/rounded_password_field.dart';
import 'package:wilcome_login/components/text_faild_container.dart';
import 'package:wilcome_login/constants.dart';

import '../login_screen.dart';
import 'background.dart';

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
              "LOGIN",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            SvgPicture.asset(
              'assets/icons/login.svg',
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
              text: "LOGIN",
              press: () {

              },
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            AlreadyHaveAnAccountCheak(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
