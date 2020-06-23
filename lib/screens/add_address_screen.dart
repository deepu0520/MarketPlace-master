import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/widgets/appbar_widget.dart';
import 'package:marketplace/widgets/gradient_border_button.dart';
import 'package:marketplace/widgets/gradient_text.dart';

class AddAddressScreen extends StatefulWidget {
  AddAddressState createState() => AddAddressState();
}

class AddAddressState extends State<AddAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
          context: context,
          title: 'Add Address',
          isBack: true,
          isShowAction: false),
        body: SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[

            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15, top: 5),
              child: Text(
                'Default Address',
                style: TextStyle(
                    fontSize: 15,
                    color: MyColor.cartTextColor,
                    fontFamily: 'Geomanist'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.3)),
                child: Container(
                  height: 155,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              'Angelina Mark',
                              style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 16,
                                  color: MyColor.greyDark,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.24),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 15),
                            child: Container(
                              width: 73,
                              height: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: MyColor.boxAddressColor,
                              ),
                              child: Center(
                                child: Text(
                                  'Office',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                        child: Text(
                          '91 Roces Ave, 1103,Quezon City, Mtero Mania',
                          style: TextStyle(
                              fontSize: 11,
                              letterSpacing: 0.27,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w500,
                              color: MyColor.greyDark),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: Text(
                          'Pin Code: 125467',
                          style: TextStyle(
                              fontSize: 11,
                              letterSpacing: 0.27,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w500,
                              color: MyColor.greyDark),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Mobile: ',
                              style: TextStyle(
                                  fontSize: 11,
                                  letterSpacing: 0.27,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w500,
                                  color: MyColor.greyDark),
                            ),
                            Text(
                              '8767656534',
                              style: TextStyle(
                                  fontSize: 13,
                                  letterSpacing: 0.27,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w500,
                                  color: MyColor.addressHeaderColor),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 5, left: 15),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.3)),
                                child: Container(
                                  width: 133.3,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 0, left: 0),
                                    child: Center(
                                      child: Text(
                                        'Edit',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            decoration: TextDecoration.none,
                                            fontFamily: 'Gilroy',
                                            letterSpacing: 0.2,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.3),
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        MyColor.gradientStart,
                                        MyColor.gradientEnd
                                      ],
                                    ),
                                    color: Colors.white,
                                  ),
                                  height: 32,
                                ),
                              ),
                            ),
                            Container(
                              width: 133.3,
                              child: UnicornOutlineButton(
                                strokeWidth: 1,
                                radius: 8.3,
                                gradient: LinearGradient(
                                  colors: [
                                    MyColor.gradientEnd,
                                    MyColor.gradientStart
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                child: GradientText(
                                  'Remove',
                                  gradient: LinearGradient(colors: [
                                    MyColor.gradientStart,
                                    MyColor.gradientEnd
                                  ]),
                                ),
                                onPressed: () {},
                              ),
                              height: 32,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: DottedBorder(
                color: Colors.black.withOpacity(0.4),
                strokeWidth: 0.9,
                borderType: BorderType.RRect,
                radius: Radius.circular(8.3),
                padding: EdgeInsets.all(6),
                child: Container(
                  width: double.infinity,
                  height: 233,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          width: 56,
                          height: 56,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            color: MyColor.lightGrey,
                          ),
                          child: Center(
                              child: Image.asset(
                            'images/loc_with_arrow.png',
                            width: 23,
                            height: 23,
                          ))),
                      SizedBox(height: 23),
                      Text(
                        'Add new Address',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Gilroy',
                            color: MyColor.addAddressFont,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Lorem lpsum is simply dummy text of the printing and typesetting industry',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w500,
                            color: MyColor.dummyAddressFont),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 5, left: 15),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.3)),
                          child: Container(
                            width: 163.3,
                            child: Padding(
                              padding: EdgeInsets.only(top: 0, left: 0),
                              child: Center(
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.3),
                              gradient: LinearGradient(
                                colors: <Color>[
                                  MyColor.gradientStart,
                                  MyColor.gradientEnd
                                ],
                              ),
                              color: Colors.white,
                            ),
                            height: 38,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
