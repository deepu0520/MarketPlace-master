import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/widgets/appbar_widget.dart';
import 'package:marketplace/widgets/favourite_list_item.dart';
import 'package:marketplace/widgets/home_list_widget.dart';
import 'package:marketplace/widgets/product_list_item.dart';

class FavouriteScreen extends StatefulWidget {
  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.only(left: 16),
            child: Text(
              '(Total product 2856)',
              style: TextStyle(
                  color: MyColor.searchTotalTextColor,
                  fontSize: 12,
                  fontFamily: 'Geomanist'),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.only(left: 8, right: 8),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 16,
                    childAspectRatio: .8),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return FavouriteListItem();
                }),
          ),
        ],
      ),
    );
  }
}
