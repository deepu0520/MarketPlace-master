import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/callback/button_click_callback.dart';
import 'package:marketplace/widgets/add_card_widget.dart';
import 'package:marketplace/widgets/appbar_widget.dart';
import 'package:marketplace/widgets/button_widget.dart';

class AddCardScreen extends StatefulWidget {
  AddCardState createState() => AddCardState();
}

class AddCardState extends State<AddCardScreen> implements ButtonClickListener{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWidget(
            context: context,
            title: 'Add Cards',
            isBack: true,
            isShowAction: false),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Expanded(
                    child: ListView(
                  children: <Widget>[
                    Image.asset(
                      'images/debit_card.png',
                      width: 269,
                      height: 162.7,
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: AddCardWidget(
                          'Cardholder’s Full Name:', 'Angelica Mark', false),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: AddCardWidget(
                          'Card Number:', '2345 6784 5612 4521', false),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: AddCardWidget('Exp. Date:', '09/28', false),
                          ),
                          flex: 1,
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: AddCardWidget('CVV:', '123', true),
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                )),
               MyButton(callback: this,title: "Add Card",)

              ],
            ),
          ),
        ));
  }

  @override
  void onButtonClickListener(int id) {

  }
}
