import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/widgets/appbar_widget.dart';
import 'package:marketplace/widgets/home_list_widget.dart';
import 'package:marketplace/widgets/product_list_item.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        context: context,
        counter: 3,
        isBack: true,
        type: "search",
      ),
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
                  return ProductListItem();
                }),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: new BorderRadius.only(
                    topLeft:  const  Radius.circular(40.0),
                    topRight: const  Radius.circular(40.0))

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.swap_vert),
                        Text(
                          "SORT",
                          style: TextStyle(
                              color: MyColor.homeItemTitleColor,
                              fontSize: 13.5,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )),
                Container(
                  width: 1,
                  height: 24,
                  color: MyColor.bottomIconColor,
                ),
                Container(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.swap_vert),
                        Text(
                          "FILTER",
                          style: TextStyle(
                              color: MyColor.homeItemTitleColor,
                              fontSize: 13.5,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
