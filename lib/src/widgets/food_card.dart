import 'package:flutter/material.dart';
import 'package:food_delivery/constant.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int numberOfItems;

  FoodCard({this.numberOfItems, this.imagePath, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 15),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Row(
          children: <Widget>[
            Image(
              image: AssetImage(imagePath),
              height: 65,
              width: 65,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  categoryName,
                  style: kCategoryTitleStyle,
                ),
                Text("$numberOfItems Kinds"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
