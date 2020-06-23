import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/widgets/appbar_widget.dart';

class CouponScreen extends StatefulWidget {
  @override
  _CouponScreenState createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWidget(
            context: context,
            title: 'My Coupons',
            isBack: true,
            isShowAction: false),
        body:
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Stack(alignment: Alignment.center, children: <Widget>[
                  Image.asset('images/coupon_white_back.png'),
                  Image.asset('images/coupon_back.png'),
                ]),
                Container(
                    margin: EdgeInsets.all(28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(top: 32),
                                child: Image.asset('images/coupon_circle.png')),
                            Image.asset('images/coupon_thumb.png'),
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "30% off",
                              style: TextStyle(
                                  color: MyColor.whiteColor,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Gilory',
                                  fontSize: 15.3),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "on minimum purchase of \$25",
                              style: TextStyle(
                                  color: MyColor.whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Gilory',
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Expiry: May 31, 2020",
                          style: TextStyle(
                              color: MyColor.whiteColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Gilory',
                              fontSize: 10.8),
                        ),
                        SizedBox(
                          height: 36,
                        ),
                        Image.asset('images/coupon_dot_line.png'),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          "Code:",
                          style: TextStyle(
                              color: MyColor.offWhiteColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Gilory',
                              fontSize: 10.8),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "NEWUSER2020",
                          style: TextStyle(
                              color: MyColor.whiteColor,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Gilory',
                              fontSize: 25.3),
                        ),
                      ],
                    ))
              ],
            ),
          );
  }
}
