import 'package:flutter/material.dart';
import '../Constant/constent.dart';


class IconContent extends StatelessWidget {
  IconContent({@required this.myIcon, this.myText, this.myColor});

  final IconData myIcon;
  final String myText;
  final Color myColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          myIcon,
          size: 88.0,
          color: myColor,
        ),
        Text(
          myText,
          style: kLebalTextStyle,
        ),
      ],
    );
  }
}
