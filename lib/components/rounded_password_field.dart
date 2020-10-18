import 'package:flutter/material.dart';
import 'package:wilcome_login/components/text_faild_container.dart';

import '../constants.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: KPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: KPrimaryColor,

          ),
          hintText: "Password",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
