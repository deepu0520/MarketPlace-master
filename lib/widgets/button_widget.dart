import 'package:flutter/material.dart';
import 'package:marketplace/callback/button_click_callback.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/utils/constants.dart';

class MyButton extends StatelessWidget {

  ButtonClickListener callback;
  final String title, backgroundImage;

  MyButton(
      {this.callback,
      this.title,
      this.backgroundImage = "images/roundedRectangle.png"});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(backgroundImage), fit: BoxFit.fill),
            ),
            child: Text(
              title,
              style: TextStyle(
                  color: MyColor.whiteColor,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600),
            ) // button text
            ),
        onTap: () => callback.onButtonClickListener(Constants.BUTTON_CLICK_ID));
  }
}
