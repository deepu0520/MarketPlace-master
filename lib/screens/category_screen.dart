import 'package:flutter/material.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/models/category_model.dart';
import 'package:marketplace/widgets/category_list_item.dart';

List<CategoryModel> myList = List<CategoryModel>();

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {
    super.initState();
    if (myList.length == 11) return;
    myList.add(CategoryModel("Grocery", "images/grocery.png"));
    myList.add(CategoryModel("Mobile", "images/icon_mobile.png"));
    myList.add(CategoryModel("Fashion", "images/icon_fashion.png"));
    myList.add(CategoryModel("appliances", "images/icon_appliance.png"));
    myList.add(CategoryModel("Beauty", "images/icon_beauty.png"));
    myList.add(CategoryModel("home", "images/icon_furniture.png"));
    myList.add(CategoryModel("Jewelry", "images/icon_jewelry.png"));
    myList.add(CategoryModel("Watches", "images/icon_watches.png"));
    myList.add(CategoryModel("Footwear", "images/icon_footwear.png"));
    myList.add(CategoryModel("Bags", "images/icon_bag.png"));
    myList.add(CategoryModel("Kids wear", "images/icon_kids_wear.png"));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.only(left: 16),
          child: Text(
            'Categories (Total 11)',
            style: TextStyle(
                color: MyColor.searchTotalTextColor,
                fontSize: 12,
                fontFamily: 'Geomanist'),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Expanded(
          child: GridView.builder(
              padding: EdgeInsets.only(left: 8, right: 8),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: myList.length,
              itemBuilder: (BuildContext context, int index) {
                return CategoryListItem(item: myList[index]);
              }),
        ),
      ],
    );
  }
}
