import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/models/category_model.dart';
import 'package:marketplace/widgets/category_list_item.dart';
import 'package:marketplace/widgets/home_list_widget.dart';

List<CategoryModel> myList = List<CategoryModel>();

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

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
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[

          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 10),
            child: SizedBox(
                height: 162.0,
                width: 350.0,
                child: Carousel(
                  images: [
                    //NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                    ExactAssetImage("images/phone_banner.png"),
                    ExactAssetImage("images/banner3.jpg"),
                    ExactAssetImage("images/banner5.jpg"),
                    ExactAssetImage("images/banner4.jpg"),
                    ExactAssetImage("images/phone_banner2.jpg"),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  autoplay: true,
                  autoplayDuration: Duration(seconds: 4),
                  dotColor: Colors.blue,
                  indicatorBgPadding: 5.0,
                  dotBgColor: MyColor.gradientStart.withOpacity(0.2),
                  borderRadius: true,
                )
            ),
          ),
          /*Image.network(
            'https://i.ibb.co/VWkYcfN/group3-3x.png',
            width: MediaQuery.of(context).size.width,
          ),*/
          Container(
              height: 106,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: myList.length,
                  padding: EdgeInsets.only(left: 12, right: 12),
                  itemBuilder: (context, index) {
                    return CategoryListItem(
                      item: myList[index],
                      bottomPadding: 16,
                      iconHeight: 42,
                      textSize: 9.3,
                      elevation: 8.0,
                    );
                  })),
          SizedBox(
            height: 8,
          ),
          TitleText("Today’s deal"),
          SizedBox(
            height: 8,
          ),
          HomeListView(),
          SizedBox(
            height: 8,
          ),
          TitleText("Explore Brands"),
          SizedBox(
            height: 8,
          ),
          Container(
              height: 72,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  padding: EdgeInsets.only(left: 12, right: 12),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 4, right: 4),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .38,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(4.0),
                          child: Image.network(
                            'https://cdn.pixabay.com/photo/2015/06/19/21/24/the-road-815297__340.jpg',
                            height: 70,
                            fit: BoxFit.fill,
                          )),
                    );
                  })),
          SizedBox(
            height: 24,
          ),
          TitleText("Popular Product"),
          SizedBox(
            height: 8,
          ),
          HomeListView()
        ],
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  final title;

  TitleText(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Text(
        title,
        style: TextStyle(
            color: MyColor.homeTitleColor,
            fontSize: 18,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
