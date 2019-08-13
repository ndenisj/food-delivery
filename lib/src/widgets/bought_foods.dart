import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget {
  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/images/breakfast.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black12,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hot Coffee",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                        size: 16,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "(22.0 Reviews)",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "22.0",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Mini order",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
