import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/callback/button_click_callback.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/widgets/appbar_widget.dart';
import 'package:marketplace/widgets/button_widget.dart';

class CartItemsScreen extends StatefulWidget {
  CartItemsState createState() => CartItemsState();
}

class CartItemsState extends State<CartItemsScreen>
    implements ButtonClickListener {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        context: context,
        clickListener: this,
        counter: 0,
        isBack: true,
        type: "shopping",
        title: "Shopping Cart",
        actionIcon: 'images/action_fav.png',
      ),
      body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Total Cart Product (2)',
                        style: TextStyle(
                            fontFamily: 'Geomanist',
                            fontSize: 15,
                            color: MyColor.cartTextColor),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int position) {
                          return Padding(
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 5),
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.3)),
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  child: Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.3),
                                        child: Image.network(
                                          'https://cdn.pixabay.com/photo/2015/06/19/21/24/the-road-815297__340.jpg',
                                          height: 128.7,
                                          width: 100.3,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(width: 12),
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Expanded(
                                                child: Text(
                                                  'Royal Wing Chair in Blue',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Gilroy',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: MyColor
                                                          .homeItemTitleColor),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                              Image.asset(
                                                'images/cross.png',
                                                width: 17,
                                                height: 17,
                                              ),
                                            ],
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 2),
                                            child: Text(
                                              'by Dreamzz Furniture',
                                              style: TextStyle(
                                                fontFamily: 'Gilroy',
                                                fontSize: 9.3,
                                                color: MyColor
                                                    .homeItemSubTitleColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 2),
                                            child: Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 0),
                                                  child: Text(
                                                    '\$1500',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: MyColor
                                                          .homeItemTitleColor,
                                                      fontFamily: 'Gilroy',
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 8),
                                                  child: Text(
                                                    '\$2500',
                                                    style: TextStyle(
                                                        fontSize: 7.7,
                                                        color: MyColor
                                                            .homeItemSubTitleColor,
                                                        fontFamily: 'Gilroy',
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 5),
                                            child: Row(
                                              children: <Widget>[
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: 58.3,
                                                  height: 17.7,
                                                  decoration: BoxDecoration(
                                                    color: MyColor.lightGrey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Text(
                                                    'Size:XXL',
                                                    style: TextStyle(
                                                        fontSize: 9.3,
                                                        fontFamily: 'Gilroy',
                                                        color: MyColor
                                                            .homeItemTitleColor,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  width: 58.3,
                                                  height: 17.7,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: MyColor.lightGrey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Text(
                                                    'Qty 01',
                                                    style: TextStyle(
                                                        fontSize: 9.3,
                                                        fontFamily: 'Gilroy',
                                                        color: MyColor
                                                            .homeItemTitleColor,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Moved to Wishlist',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10.5,
                                                      decoration:
                                                          TextDecoration.none,
                                                      fontFamily: 'Gilroy',
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.3),
                                                  gradient: LinearGradient(
                                                    colors: <Color>[
                                                      MyColor.gradientStart,
                                                      MyColor.gradientEnd
                                                    ],
                                                  ),
                                                  color: Colors.white,
                                                ),
                                              ),
                                        ],
                                      ))
                                    ],
                                  ),
                                ),
                              ));
                        }),
                    SizedBox(
                      height: 20,
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
                          height: 83,
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  'Coupons:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Gilroy'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 5),
                                child: Container(
                                  child: TextFormField(
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.7),
                                        fontSize: 12,
                                        decoration: TextDecoration.none,
                                        fontFamily: 'GilroySemibold'),
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                          left: 10.0, bottom: 15),
                                      border: InputBorder.none,
                                      hintText: 'Apply Coupon CODE',
                                      hintStyle: TextStyle(
                                          color: MyColor.grey,
                                          fontSize: 12,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroySemibold'),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.black54, width: 0.2),
                                    color: Colors.white,
                                  ),
                                  height: 34.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                        child: Divider(
                          color: MyColor.grey,
                        )),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'PRICE DETAIL (2 Item)',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Gilroy',
                            color: MyColor.homeItemTitleColor),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Cart Total',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              color: MyColor.homeItemTitleColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            '\$3000',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              color: MyColor.homeItemTitleColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Cart Discount',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              color: MyColor.homeItemTitleColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            '\$40',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w300,
                                color: MyColor.colorGreen),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Coupon Discount',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              color: MyColor.homeItemTitleColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            'Apply Coupon',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              color: MyColor.colorCoupon,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Order Total',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              color: MyColor.homeItemTitleColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            '\$2960',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              color: MyColor.homeItemTitleColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Delivery Charges',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              color: MyColor.homeItemTitleColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            '\$2',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              color: MyColor.homeItemTitleColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                        child: Divider(
                          color: MyColor.grey,
                        )),
                    SizedBox(
                      height: 10,
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
                    Padding(
                        padding: EdgeInsets.only(
                            top: 5, left: 15, right: 15, bottom: 10),
                        child: Divider(
                          color: MyColor.grey,
                        )),
                  ],
                ),
              ),

              MyButton(callback: this, title: "Continue")
            ],
          )),
    );
  }

  @override
  void onButtonClickListener(int id) {
    Navigator.pushNamed(context, '/payment');
  }
}
