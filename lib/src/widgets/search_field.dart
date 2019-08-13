import 'package:flutter/material.dart';
import 'package:food_delivery/constant.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.0,
      borderRadius: BorderRadius.circular(30),
      child: TextField(
        style: kSearchTextStyle,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          hintText: "Search any food",
          suffixIcon: Material(
            elevation: 3.0,
            borderRadius: BorderRadius.circular(30),
            child: Icon(Icons.search),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
