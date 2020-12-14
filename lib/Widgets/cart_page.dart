import 'package:flutter/material.dart';

class cartPage extends StatelessWidget {
  final Color colorss;
  final Widget cardChild;
  final Function onPress;
  cartPage({@required this.colorss, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colorss,
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
