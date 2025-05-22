import 'package:flutter/material.dart';
import 'package:plant_app_081/constants.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(children: [
          Expanded(
            child: Column()
          ),
          Container(
            height: size.height *0.8,
            width: size.width*0.75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(63),
                bottomLeft: Radius.circular(63)
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 60,
                  color: kPrimaryColor.withAlpha((255*0.29).round())
                )
              ],
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
                image: AssetImage("assets/images/img.png"))
            ),
          )
        ],
        )
      ],
    );
  }
}