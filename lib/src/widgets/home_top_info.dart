import 'package:flutter/material.dart';
import 'package:food_delivery/constant.dart';

class HomeTopInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "What would",
                style: kHeaderTextStyle,
              ),
              Text(
                "You like to eat?",
                style: kHeaderTextStyle,
              ),
            ],
          ),
          Icon(
            Icons.notifications_none,
            size: 40,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
