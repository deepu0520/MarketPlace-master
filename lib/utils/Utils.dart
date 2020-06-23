import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:marketplace/colors/colors.dart';

class MyUtils {
  static const String LIVE_EVENT = "live_event";
  static const String PAST_EVENT = "past_event";
  static const String POST_DETAIL = "post_detail";
  static const String MAP_DATE_FORMAT = "MMM dd, yyyy";
  static const String BASE_URL = "http://10.0.4.26:5080/";
  static const String HEADER = "005b4539a97c8fcc965b4918d2a61e50";
  static const int LOAD_COUNT = 10;

  showAlertDialog(BuildContext context, String title, String message) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  /* static String getParseDate(String stringDate) {
    var date = DateFormat("yyyy-MM-dd'T'hh:mm:ss.sss'Z'").parse(stringDate);
    return DateFormat('MM/dd/yyyy').format(date);
  }*/

/*  static Future<String> getDeviceId() async {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      return androidInfo.androidId;
    } else {
      IosDeviceInfo iosDeviceInfo = await deviceInfoPlugin.iosInfo;
      return iosDeviceInfo.identifierForVendor;
    }
  }

  static Future<String> getDeviceToken(
      FirebaseMessaging _firebaseMessaging) async {
    String token = await getSharedPreferences('token');
    if (token==null) {
      token = await _firebaseMessaging.getToken();
      await saveSharedPreferences('token', token);
    }
    return token;
  }*/

  static void showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: MyColor.whiteColor,
        textColor: Colors.black,
        fontSize: 16.0);
  }
}
