import 'package:flutter/material.dart';
import 'package:marketplace/colors/colors.dart';
import 'package:marketplace/utils/constants.dart';

class SearchBoxWidget extends StatelessWidget {
  final String type;
  final clickListener;

  const SearchBoxWidget({Key key, this.clickListener, this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        onTap: () => {
              if (type.compareTo('home') == 0)
                clickListener.onButtonClickListener(Constants.SEARCH_CLICK_ID)
            },
        readOnly: type.compareTo('home') == 0,
        expands: false,
        decoration: InputDecoration(
            filled: true,
            prefixIcon: Image.asset('images/icon_search.png'),
            hintText: "Search for brand & products",
            hintStyle: TextStyle(color: MyColor.homeItemSubTitleColor),
            contentPadding: const EdgeInsets.only(
                left: 12, bottom: 1.0, top: 1.0, right: 12),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(90.0)),
                borderSide: BorderSide(
                  color: Colors.transparent,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(90.0)),
                borderSide: BorderSide(
                  color: Colors.transparent,
                )),
            fillColor: MyColor.whiteColor),
        style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w600),
        textInputAction: TextInputAction.search,
        maxLines: 1,
        onSubmitted: (term) {});
  }
}
