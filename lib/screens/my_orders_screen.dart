import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/widgets/horizontal_dashed_line.dart';

class MyOrdersScreen extends StatefulWidget {
  MyOrdersState createState() => MyOrdersState();
}

class MyOrdersState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "Orders",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView.builder(
              padding: EdgeInsets.only(top: 10),
              itemCount: 4,
              itemBuilder: (BuildContext context, int position) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/orderdetail');
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(
                            left: 10,
                            top: 5,
                            right: 10,
                          ),
                          child: Text(
                            'Order no.: 11234675034',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: MyColor.cartTextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Gilroy',
                                letterSpacing: -0.24),
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Card(
                              margin: EdgeInsets.zero,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.3),
                              ),
                              child: Container(
                                  child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, top: 10, bottom: 10),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.3),
                                          child: Image.asset(
                                            'images/blue_chair.jpg',
                                            height: 125.7,
                                            width: 100.3,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10, top: 5),
                                                    child: Text(
                                                      'Royal Wing chair in Blue Color',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                          color:
                                                              MyColor.greyDark,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontFamily: 'Gilroy',
                                                          letterSpacing: -0.24),
                                                    ),
                                                  ),
                                                  flex: 8,
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.only(top: 5),
                                                    child: Image.asset(
                                                      'images/right_arrow_black.png',
                                                      width: 7,
                                                      height: 12,
                                                    ),
                                                  ),
                                                  flex: 1,
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10, top: 3),
                                              child: Text(
                                                'by Dreamzz Furniture ',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color:
                                                      MyColor.listProductItems,
                                                  fontSize: 13,
                                                  fontFamily: 'Gilroy',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 3, left: 10),
                                                  child: Text(
                                                    '\$1500',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: MyColor
                                                            .listProductName,
                                                        fontFamily: 'Gilroy',
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 3, top: 6),
                                                  child: Text(
                                                    '\$2500',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      color: MyColor
                                                          .listProductItems,
                                                      fontFamily: 'Gilroy',
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10, top: 8),
                                              child: Row(
                                                children: <Widget>[
                                                  Container(
                                                    width: 58.3,
                                                    height: 17.7,
                                                    decoration: BoxDecoration(
                                                      color: MyColor.lightGrey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'One Size',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Gilroy',
                                                            color: MyColor
                                                                .listProductName,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    width: 58.3,
                                                    height: 17.7,
                                                    decoration: BoxDecoration(
                                                      color: MyColor.lightGrey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Qty 01',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Gilroy',
                                                            color: MyColor
                                                                .listProductName,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10, top: 12),
                                              child: Text(
                                                'Delivered (Mar 19,2020)',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color:
                                                        MyColor.txtLightGreen,
                                                    fontFamily: 'Gilroy',
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  HorizontalDash(
                                    height: 1,
                                    color: MyColor.greyDivider22,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Share Rating:',
                                          style: TextStyle(
                                              color: MyColor.greyDark,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Gilroy',
                                              letterSpacing: -0.24),
                                        ),
                                      ),
                                      SizedBox(width: 12),
                                      Image.asset(
                                        'images/rating_empty.png',
                                        width: 16,
                                        height: 16,
                                      ),
                                      SizedBox(width: 3),
                                      Image.asset(
                                        'images/rating_empty.png',
                                        width: 16,
                                        height: 16,
                                      ),
                                      SizedBox(width: 3),
                                      Image.asset(
                                        'images/rating_empty.png',
                                        width: 16,
                                        height: 16,
                                      ),
                                      SizedBox(width: 3),
                                      Image.asset(
                                        'images/rating_empty.png',
                                        width: 16,
                                        height: 16,
                                      ),
                                      SizedBox(width: 3),
                                      Image.asset(
                                        'images/rating_empty.png',
                                        width: 16,
                                        height: 16,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                ],
                              )),
                            )),
                        SizedBox(height: 25),
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
