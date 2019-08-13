import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/home_top_info.dart';
import 'widgets/food_category.dart';
import 'widgets/search_field.dart';
import 'widgets/bought_foods.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50, left: 10, right: 10),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(
            height: 15,
          ),
          SearchField(),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Frequently Bought Food",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "View all",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: BoughtFoods(),
          ),
        ],
      ),
    );
  }
}
