import 'package:flutter/material.dart';
import 'package:marketplace/callback/button_click_callback.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/utils/constants.dart';
import 'package:marketplace/widgets/appbar_widget.dart';
import 'package:marketplace/widgets/button_widget.dart';
import 'package:marketplace/widgets/home_list_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail>
    implements ButtonClickListener {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWidget(
          context: context,
          clickListener: this,
          counter: 3,
          isBack: true,
          type: "home",
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              SizedBox(
                height: 8,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                      height: 240,
                      child: PageView.builder(
                          physics: AlwaysScrollableScrollPhysics(),
                          controller: _controller,
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              color: Colors.white,
                              margin: EdgeInsets.only(
                                  bottom: 52, left: 16, right: 16),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.0),
                                  child: Image.network(
                                    'https://cdn.pixabay.com/photo/2015/06/19/21/24/the-road-815297__340.jpg',
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  )),
                            );
                          })),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 42, bottom: 8),
                        child: SmoothPageIndicator(
                          controller: _controller, // PageController
                          count: 4,
                          effect: WormEffect(
                            activeDotColor: MyColor.dotActiveColor,
                            dotColor: MyColor.dotInactiveColor,
                            dotHeight: 8,
                            dotWidth: 8,
                          ),
                        ), // your preferred effect
                      ),
                      Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 8,
                          margin:
                              EdgeInsets.only(bottom: 12, left: 32, right: 32),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Royal Wing Chair in Blue Color",
                                  style: TextStyle(
                                      color: MyColor.homeItemTitleColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Gilroy'),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "by Dreamzz Furniture",
                                          style: TextStyle(
                                              color:
                                                  MyColor.homeItemSubTitleColor,
                                              fontSize: 9.3,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Gilroy'),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              "\$1500",
                                              style: TextStyle(
                                                  color: MyColor
                                                      .homeItemTitleColor,
                                                  fontSize: 10.7,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Gilroy'),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "(45% OFF)",
                                              style: TextStyle(
                                                  color: MyColor
                                                      .homeItemTitleColor,
                                                  fontSize: 7.8,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Gilroy'),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "MRP \$2500",
                                              style: TextStyle(
                                                  color: MyColor.detailPrice,
                                                  fontSize: 7.8,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Gilroy'),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "(Inclusive of all taxes)",
                                              style: TextStyle(
                                                  color: MyColor
                                                      .detailInclusiveText,
                                                  fontSize: 7.8,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Gilroy'),
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                                    Stack(
                                      alignment: Alignment.center,
                                      children: <Widget>[
                                        Image.asset('images/ellipse_like.png'),
                                        Image.asset(
                                          'images/icon_fav.png',
                                          color: MyColor.whiteColor,
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              TitleText("Product Detail"),
              SizedBox(
                height: 12,
              ),
              Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a typespecimen book",
                    style: TextStyle(
                        color: MyColor.detailText,
                        fontSize: 9.3,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 12,
              ),
              TitleText("Size"),
              SizedBox(
                height: 12,
              ),
              Container(
                  height: 42,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      padding: EdgeInsets.only(left: 12, right: 12),
                      itemBuilder: (context, index) {
                        return Center(
                          child: Container(
                            height: 42,
                            width: 42,
                            margin: EdgeInsets.only(right: 8),
                            decoration: index == 3
                                ? BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/size_back.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.circle,
                                  )
                                : BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                    border: Border.all(
                                        width: 2,
                                        color: MyColor.detailSizeText,
                                        style: BorderStyle.solid)),
                            child: Center(
                                child: Text(
                              "${38 + index}",
                              style: TextStyle(
                                  color: index == 3
                                      ? MyColor.whiteColor
                                      : MyColor.detailSizeText,
                                  fontSize: 10.8,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                        );
                      })),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/roundedRectangleDoted.png"),
                        fit: BoxFit.fill)),
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(left: 12, right: 12, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TitleText('Check Delivery'),
                        Text(
                          '(Pay on delivery might be available)',
                          style: TextStyle(
                              color: MyColor.detailPrice,
                              fontSize: 7.7,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.all(12),
                        child: TextField(
                            expands: false,
                            decoration: InputDecoration(
                                filled: true,
                                hintText: "ENTER  PIN CODE",
                                hintStyle: TextStyle(
                                    color: MyColor.homeItemSubTitleColor),
                                contentPadding: const EdgeInsets.only(
                                    left: 12, bottom: 1.0, top: 1.0, right: 12),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                                fillColor: MyColor.whiteColor),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 9.3,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600),
                            textInputAction: TextInputAction.search,
                            maxLines: 1,
                            onSubmitted: (term) {})),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('images/roundedRectangle.png'),
                  fit: BoxFit.fill,
                )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Easy 30 days return and exchange',
                      style: TextStyle(
                          color: MyColor.whiteColor,
                          fontSize: 10.8,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Choose to return or exchange for a different size (if available) with in 30 days',
                      style: TextStyle(
                          color: MyColor.detailPolicyTextColor,
                          fontSize: 9.3,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              TitleText('View Similar'),
              SizedBox(
                height: 8,
              ),
              HomeListView(),
            ],
          )),
          MyButton(callback: this, title: "Add to Cart")
        ]));
  }

  @override
  void onButtonClickListener(int id) {
    if (id == Constants.SEARCH_CLICK_ID)
      Navigator.pushNamed(context, '/search');
    else if (id == Constants.BUTTON_CLICK_ID) {}
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
            color: MyColor.detailTitleText,
            fontSize: 10.8,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
