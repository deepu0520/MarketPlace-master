import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/widgets/horizontal_dashed_line.dart';
import 'package:marketplace/widgets/order_detail_text_widget.dart';

class OrderDetailScreen extends StatefulWidget {
  OrderDetailState createState() => OrderDetailState();
}

class OrderDetailState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: MyColor.textBlueColor, //change your color here
        ),
        title: Text(
          "Order Detail",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10),
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
                            padding:
                                EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.3),
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
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: 10, top: 5),
                                        child: Text(
                                          'Royal Wing chair in Blue Color',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                              color: MyColor.greyDark,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Gilroy',
                                              letterSpacing: -0.24),
                                        ),
                                      ),
                                      flex: 8,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 5),
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
                                  padding: EdgeInsets.only(left: 10, top: 3),
                                  child: Text(
                                    'by Dreamzz Furniture ',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: MyColor.listProductItems,
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
                                      padding:
                                          EdgeInsets.only(top: 3, left: 10),
                                      child: Text(
                                        '\$1500',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: MyColor.listProductName,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3, top: 6),
                                      child: Text(
                                        '\$2500',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: MyColor.listProductItems,
                                          fontFamily: 'Gilroy',
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 8),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 58.3,
                                        height: 17.7,
                                        decoration: BoxDecoration(
                                          color: MyColor.lightGrey,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'One Size',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: 'Gilroy',
                                                color: MyColor.listProductName,
                                                fontWeight: FontWeight.w500),
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
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Qty 01',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: 'Gilroy',
                                                color: MyColor.listProductName,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 12),
                                  child: Text(
                                    'Delivered (Mar 19,2020)',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: MyColor.txtLightGreen,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w700),
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
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'PRICE DETAIL',
                          style: TextStyle(
                              fontSize: 16,
                              color: MyColor.addAddressFont,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Gilroy'),
                        ),
                      ),
                      SizedBox(height: 13),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            OrderDetailText('MRP', MyColor.greyDark),
                            OrderDetailText('\$3000', MyColor.greyDark),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            OrderDetailText('Item Discount', MyColor.greyDark),
                            OrderDetailText('\$40', MyColor.colorGreen),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            OrderDetailText('Wallet Money', MyColor.greyDark),
                            OrderDetailText(
                              '\$500',
                              MyColor.colorCoupon,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            OrderDetailText('Credit Card', MyColor.greyDark),
                            OrderDetailText('\$2460', MyColor.greyDark),
                          ],
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: 15, left: 10, right: 10),
                          child: HorizontalDash(
                            height: 1,
                            color: MyColor.greyDivider22,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'TOTAL',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Gilroy',
                                color: Colors.black,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Text(
                              '\$2962',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Gilroy',
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  )),
                )),
            SizedBox(height: 35),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Delivery Address',
                style: TextStyle(
                    fontFamily: 'Geomanist',
                    fontSize: 16,
                    color: MyColor.cartTextColor),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 15),
                  child: Text(
                    'Hytech pro',
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
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Text(
                '91 Roces Ave, 1103,Quezon City, Mtero Mania ',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
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
              padding: EdgeInsets.only(left: 10, right: 10, top: 2),
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
              padding: EdgeInsets.only(left: 10, right: 10, top: 2),
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
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
