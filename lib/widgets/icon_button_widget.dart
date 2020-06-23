import 'package:flutter/material.dart';
import 'package:marketplace/colors/colors.dart';
import 'dart:ui' as ui;

class IconButtonWidget extends StatelessWidget {
  final index;
  final icon;
  final selectedIndex;
  final callBack;

  const IconButtonWidget(
      this.callBack, this.icon, this.index, this.selectedIndex);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => callBack.onButtonClickListener(index),
      iconSize: 27.0,
      icon: selectedIndex == index
          ? ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF239ED4),
                      Color(0xFF42D8C0),
                    ],
                    tileMode: TileMode.mirror,
                  ).createShader(bounds),
              child: Image.asset(
                icon,
                color: MyColor.whiteColor,
              ))
          : Image.asset(
              icon,
              color: MyColor.bottomIconColor,
            ),
    );
  }
}
