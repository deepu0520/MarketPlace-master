
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/colors/colors.dart';

class OrderDetailText extends StatelessWidget {
  OrderDetailText(
      this.text,this.color
      );

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontFamily: 'Gilroy',
        color: color,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}