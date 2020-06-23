import 'package:flutter/material.dart';
import 'package:marketplace/colors/colors.dart';

class AppbarTitleText extends StatelessWidget {
  final title;
  final color;

  const AppbarTitleText({Key key, this.title, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: color,
          fontSize: 15.7,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w600),
    );
  }
}
