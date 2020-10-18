import 'package:flutter/material.dart';

import '../constants.dart';

class AlreadyHaveAnAccountCheak extends StatelessWidget {
  final bool login ;
  final Function press ;
  const AlreadyHaveAnAccountCheak({
    Key key, this.login= true, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            login ? "Don`t have an account ?" : "Already have an Account",
            style: TextStyle(
              color: KPrimaryColor,
            )
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? " Sign up" :" Sign in",
            style: TextStyle(
              color: KPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
