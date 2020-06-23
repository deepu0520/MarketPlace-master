import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/widgets/address_widget.dart';

class AllAddressScreen extends StatefulWidget {
  AllAddressState createState() => AllAddressState();
}

class AllAddressState extends State<AllAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: MyColor.textBlueColor, //change your color here
        ),
        title: Text(
          "Address",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Default Address',
              style: TextStyle(
                  fontFamily: 'Geomanist',
                  fontSize: 16,
                  color: MyColor.cartTextColor),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int position) {
                  return Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: AddressWidget(),
                  );
                }),
          ),
          Card(
            elevation: 30,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
            child: Container(
                height: 50,
                alignment: Alignment.center,
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/roundedRectangle.png"),
                      fit: BoxFit.fill),
                ),
                child: Text(
                  "Continue",
                  style: TextStyle(
                      color: MyColor.whiteColor,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600),
                ) // button text
                ),
          )
        ],
      ),
    );
  }
}
