import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_081/constants.dart';
import 'package:plant_app_081/screens/details/components/icon_card.dart';
import 'package:plant_app_081/screens/details/components/image_and_icon.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcon(size: size)
        ],
      ),
    );
  }
}



