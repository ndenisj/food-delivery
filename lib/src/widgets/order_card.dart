import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.2,
                  color: Color(0xFFD3D3D3),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              height: 75,
              width: 45,
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.keyboard_arrow_up,
                      color: Color(0xFFD3D3D3),
                    ),
                  ),
                  Text(
                    "0",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFFD3D3D3),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xFFD3D3D3),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/lunch.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      offset: Offset(1.0, 2.0),
                    ),
                  ]),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Grilled Chicken",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "\u20A63.0",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 25.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Meat",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Meat",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.cancel,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
