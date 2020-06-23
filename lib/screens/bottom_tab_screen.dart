import 'package:flutter/material.dart';
import 'package:marketplace/callback/button_click_callback.dart';
import 'package:marketplace/screens/account_screen.dart';
import 'package:marketplace/screens/category_screen.dart';
import 'package:marketplace/screens/home_sceen.dart';
import 'package:marketplace/utils/constants.dart';
import 'package:marketplace/widgets/appbar_widget.dart';
import 'package:marketplace/widgets/icon_button_widget.dart';

import 'favourite_sceen.dart';
import 'more_screen.dart';

//class needs to extend StatefulWidget since we need to make changes to the bottom app bar according to the user clicks
class BottomTabScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomTabState();
  }
}

class BottomTabState extends State<BottomTabScreen>
    implements ButtonClickListener {
  final List<Widget> _children = [
    HomeScreen(),
    FavouriteScreen(),
    AccountScreen(),
    MoreScreen(),
    CategoryScreen(),
  ];
  bool clickedCentreFAB =
      false; //boolean used to handle container animation which expands from the FAB
  int selectedIndex =
      0; //to handle which item is currently selected in the bottom app bar

  @override
  void onButtonClickListener(int id) {
    if (id == Constants.SEARCH_CLICK_ID)
      Navigator.pushNamed(context, '/search');
    else if (id == Constants.CART_ID)
      Navigator.pushNamed(context, '/cart');
    else
      setState(() {
        clickedCentreFAB = false;
        selectedIndex = id;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: selectedIndex == 2
          ? null
          : selectedIndex == 3
              ? AppbarWidget(
                  context: context,
                  clickListener: this,
                  counter: 3,
                  isBack: false,
                  type: "more",
                  title: "More on App",
                )
              : AppbarWidget(
                  context: context,
                  clickListener: this,
                  counter: 3,
                  isBack: false,
                  type: "home",
                  title: clickedCentreFAB ? "Categories" : null,
                ),
      body: _children[selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //specify the location of the FAB
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {
          if (clickedCentreFAB) return;
          setState(() {
            selectedIndex = 4;
            clickedCentreFAB = true; //to update the animated container
          });
        },
        tooltip: "Centre FAB",
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0),
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: const Alignment(0.7, -0.5),
              end: const Alignment(0.6, 0.5),
              colors: [
                Color(0xFF42D8C0),
                Color(0xFF239ED4),
              ],
            ),
          ),
          child: Image.asset('images/floating_icon.png'),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButtonWidget(this, "images/icon_home.png", 0, selectedIndex),
              IconButtonWidget(this, "images/icon_fav.png", 1, selectedIndex),
              SizedBox(
                width: 50.0,
              ),
              IconButtonWidget(this, "images/icon_user.png", 2, selectedIndex),
              IconButtonWidget(
                  this, "images/icon_others.png", 3, selectedIndex),
            ],
          ),
        ),
        //to add a space between the FAB and BottomAppBar
        shape: CircularNotchedRectangle(),
        //color of the BottomAppBar
        color: Colors.white,
      ),
    );
  }
}
