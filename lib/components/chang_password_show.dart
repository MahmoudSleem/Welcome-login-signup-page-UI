import 'package:flutter/material.dart';
import 'package:wilcome_login/components/text_faild_container.dart';

import '../constants.dart';

class changVisible extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const changVisible({Key key, this.onChanged}) : super(key: key);
  @override
  _changVisibleState createState() => _changVisibleState();
}
class _changVisibleState extends State<changVisible> {
  bool zooz = true;
  @override
  Widget build(BuildContext context) {
    return
      TextFieldContainer(
        child:
        TextField(
          obscureText: zooz,
          onChanged: (widget.onChanged),
          decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              color: KPrimaryColor,
            ),
            suffixIcon: GestureDetector(
              onTap: (){
                setState(() {
                  zooz = !zooz;
                });
              },
              child: Icon(
                zooz ?  Icons.visibility :  Icons.visibility_off,
                color: KPrimaryColor,
              ),
            ),
            hintText: "Password",
            border: InputBorder.none,
          ),
        ),
      );


  }
}
