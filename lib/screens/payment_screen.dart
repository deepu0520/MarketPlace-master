import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/widgets/custom_text_payment.dart';

class PaymentScreen extends StatefulWidget {
  PaymentState createState() => PaymentState();
}

class PaymentState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
                height: 60,
                width: double.infinity,
                margin: EdgeInsets.only(top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context, true);
                        },
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Image.asset('images/back_icon.png',
                              width: 19.3, height: 9.3),
                        ),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Center(
                          child: Container(
                        child: CustomTextPayment('Payment'),
                      )),
                      flex: 5,
                    ),
                    Expanded(
                      child: Container(
                          height: 34.3,
                          width: 34.3,
                          margin: EdgeInsets.only(right: 10),
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      new AssetImage("images/girl_dp.jpg")))),
                      flex: 1,
                    )
                  ],
                )),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 5),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: CustomTextPayment('My cards'),
                  ),
                  Container(
                      height: 193,
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: 10, top: 10, bottom: 20),
                              child: Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(23.3)),
                                child: Container(
                                  height: 123,
                                  width: 154,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          width: double.infinity,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, right: 10),
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Icon(
                                                Icons.check_circle,
                                                color: MyColor.greenColor,
                                              ),
                                            ),
                                          )),
                                      Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Alax Angelica',
                                          style: TextStyle(
                                              color: MyColor.cardNameColor,
                                              fontFamily: 'Gilroy',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        padding:
                                            EdgeInsets.only(left: 10, top: 8),
                                        child: Text(
                                          '****  **** ****  7234',
                                          style: TextStyle(
                                              color: MyColor.cardAccountNoColor,
                                              fontFamily: 'Gilroy',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 13),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        padding:
                                            EdgeInsets.only(left: 10, top: 5),
                                        child: Text(
                                          '12/24',
                                          style: TextStyle(
                                              color: MyColor.cardAccountNoColor,
                                              fontFamily: 'Gilroy',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 13),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 3, left: 2),
                                            child: Image.asset(
                                              'images/visa_card.png',
                                              width: 45,
                                              height: 45,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 3, right: 10),
                                            child: Card(
                                              color: MyColor.textBlueColor,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Container(
                                                  width: 45,
                                                  height: 20,
                                                  child: Center(
                                                    child: Text(
                                                      'Edit',
                                                      style: TextStyle(
                                                          fontFamily: 'Gilroy',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                    ),
                                                  )),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 25),
                    child: DottedBorder(
                      radius: Radius.circular(8.3),
                      borderType: BorderType.RRect,
                      color: MyColor.greyDivider22,
                      strokeWidth: 1,
                      child: Container(
                        height: 44,
                        child: Center(
                          child: Text(
                            'Add Payment Method',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Gilroy',
                                color: MyColor.textBlueColor,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 30),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry \'s standard dummytext ever since the 1500s.',
                      style: (TextStyle(
                          color: MyColor.dummyPaymentTextColor,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.18,
                          decoration: TextDecoration.none,
                          fontSize: 13)),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 15, top: 35),
                      child: CustomTextPayment('Promo Code')),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 25),
                    child: DottedBorder(
                      radius: Radius.circular(8.3),
                      borderType: BorderType.RRect,
                      color: MyColor.greyDivider22,
                      strokeWidth: 1,
                      child: Container(
                        height: 104,
                        child: Center(
                            child: Center(
                          child: Image.asset(
                            'images/promo.png',
                            width: 105,
                            height: 120,
                          ),
                        )),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 20, bottom: 15),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(top: 0, left: 0),
                          child: Center(
                            child: Text(
                              'Use Payment Method',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: <Color>[
                              MyColor.gradientGreenStart,
                              MyColor.gradientGreenEnd
                            ],
                          ),
                          color: Colors.white,
                        ),
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
