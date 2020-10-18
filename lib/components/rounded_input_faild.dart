import 'package:flutter/material.dart';
import 'package:wilcome_login/components/text_faild_container.dart';

import '../constants.dart';


class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon ;
  final ValueChanged<String> onChange;
  const RoundedInputField({
    Key key, this.hintText, this.icon  =Icons.person, this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: KPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

