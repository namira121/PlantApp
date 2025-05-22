import 'package:flutter/material.dart';
import 'package:plant_app_081/constants.dart';
import 'headwithsearch.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Headwithsearch(size: size),
          Container(
            height: 24,
            child: Stack(
              children: <Widget>[
                Text(
                  "Recommended",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 7,
                    color: kPrimaryColor.withAlpha((255*0.2).round()),
                  ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
