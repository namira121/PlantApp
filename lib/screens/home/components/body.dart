import 'package:flutter/material.dart';
import 'package:plant_app_081/constants.dart';
import 'title_with_more_btn.dart';
import 'headwithsearch.dart';
import 'recommend_plants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Headwithsearch(size: size),
          TitleWithMoreButton( 
            title: "Recommended",
            press: (){},
          ),
          RecommendsPlants(),
          TitleWithMoreButton(
            title: "Featured Plants", 
            press: (){}),
          Container(
            width: size.width * 0.8,
            height: 185,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("assets/images/bottom_img_1.png"),
              )
            ),
          )
        ],
      ),
    );
  }
}




