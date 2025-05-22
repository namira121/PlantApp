import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_081/constants.dart';
import 'package:plant_app_081/screens/details/components/icon_card.dart';
import 'package:plant_app_081/screens/details/components/image_and_icon.dart';
import 'package:plant_app_081/screens/details/components/title_and_price.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcon(size: size),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20)
                      )
                    )
                  ),
                  onPressed: (){}, 
                  child: Text("Buy Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),)),
              )
            ],
          )
        ],
      ),
    );
  }
}





