import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketplace/callback/button_click_callback.dart';
import 'package:marketplace/colors/colors.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> implements ButtonClickListener {

  // f45d27
  // f5851f

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      MyColor.greenColor,
                      MyColor.greenColor
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90)
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.person,
                      size: 90,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 32,
                          right: 32
                      ),
                      child: Text('Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              padding: EdgeInsets.only(top: 62),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 1.2,
                    height: 45,
                    padding: EdgeInsets.only(
                        top: 4, left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.email,
                          color: Colors.grey,
                        ),
                        hintText: 'Email',
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 32),
                    padding: EdgeInsets.only(
                        top: 4, left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.vpn_key,
                          color: Colors.grey,
                        ),
                        hintText: 'Password',
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16, right: 32
                      ),

                      child: Text('Forgot Password ?',
                        style: TextStyle(
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                  Spacer(),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16, right: 32
                      ),

                      child: Text('Forgot Password ?',
                        style: TextStyle(
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                  Spacer(),

                new GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/bottom_tab');
                    print("Container clicked");
                  },

                  child: Container(

                    height: 45,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 1.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            MyColor.greenColor,
                            MyColor.greenColor
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        )
                    ),
                    child: Center(
                      child: Text('Login'.toUpperCase(),

                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),

                ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void onButtonClickListener(int id) {
    // TODO: implement onButtonClickListener
  }
}