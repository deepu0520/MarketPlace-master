import 'package:flutter/material.dart';
import 'package:marketplace/callback/button_click_callback.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/utils/constants.dart';
import 'package:marketplace/widgets/search_box_widget.dart';

import 'appbar_title.dart';

class AppbarWidget extends AppBar {
  AppbarWidget(
      {BuildContext context,
      ButtonClickListener clickListener,
      int counter,
      bool isBack,
      bool isShowAction=true,
      String type,
      String title,
      String actionIcon = 'images/cart.png'})
      : super(
          backgroundColor: MyColor.whiteColor,
          elevation: 0,
          leading: isBack
              ? InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(
                    Icons.keyboard_backspace,
                    color: MyColor.homeTextColor,
                  ))
              : CircleAvatar(
                  radius: 40,
                  backgroundColor: MyColor.whiteColor,
                  child: Image.asset(
                    'images/avator.png',
                  ),
                ),
          // you can put Icon as well, it accepts any widget.
          centerTitle: true,
          title: title != null
              ? AppbarTitleText(
                  title: title,
                  color: MyColor.appbarTitle,
                )
              : Container(
                  height: 42,
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: SearchBoxWidget(
                      clickListener: clickListener,
                      type: type,
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFF239ED4),
                      Color(0xFF42D8C0),
                    ]),
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
          actions: isShowAction
              ? [
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      InkWell(
                          child: Image.asset(
                            actionIcon,
                            height: 48,
                          ),
                          onTap: () => clickListener
                              .onButtonClickListener(Constants.CART_ID)),
                      counter != 0
                          ? Positioned(
                              right: 8,
                              top: 8,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: new BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                constraints: BoxConstraints(
                                  minWidth: 14,
                                  minHeight: 14,
                                ),
                                child: Text(
                                  '$counter',
                                  style: TextStyle(
                                      color: MyColor.whiteColor,
                                      fontFamily: 'Gilory',
                                      fontSize: 7,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          : Container()
                    ],
                  )
                ]
              : [],
        );
}
