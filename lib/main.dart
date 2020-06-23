import 'package:flutter/material.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/screens/LoginScreen.dart';
import 'package:marketplace/screens/SplashScreen.dart';
import 'package:marketplace/screens/add_address_screen.dart';
import 'package:marketplace/screens/add_card_screen.dart';
import 'package:marketplace/screens/bottom_tab_screen.dart';
import 'package:marketplace/screens/cart_items_screeen.dart';
import 'package:marketplace/screens/coupon_screen.dart';
import 'package:marketplace/screens/payment_screen.dart';
import 'package:marketplace/screens/product_detail.dart';
import 'package:marketplace/screens/profile_screen.dart';
import 'package:marketplace/screens/search_sceen.dart';

import 'screens/my_orders_screen.dart';
import 'screens/order_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(


      home: SplashScreen(),
      routes: {
        '/splash_screen': (BuildContext context) => SplashScreen(),
        '/login_screen': (BuildContext context) => LoginScreen(),
        '/bottom_tab': (BuildContext context) => BottomTabScreen(),
        '/product_detail': (BuildContext context) => ProductDetail(),
        '/search': (BuildContext context) => SearchScreen(),
        '/profile': (BuildContext context) => ProfileScreen(),
        '/cart': (BuildContext context) => CartItemsScreen(),
        '/payment': (BuildContext context) => PaymentScreen(),
        '/add_card': (BuildContext context) => AddCardScreen(),
        '/add_address': (BuildContext context) => AddAddressScreen(),
        '/coupon': (BuildContext context) => CouponScreen(),
        '/orders': (BuildContext context) => MyOrdersScreen(),
        '/orderdetail': (BuildContext context) => OrderDetailScreen(),
      },
    );
  }
}
