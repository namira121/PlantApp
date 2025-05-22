import 'package:flutter/material.dart';
import 'package:plant_app_081/constants.dart';
import 'title_with_more_btn.dart';
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
          TitleWithMoreButton( 
            title: "Recommended",
            press: (){},
          ),
          Container(
            width: size.width * 0.4,
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/image_1.png"),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding/2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withAlpha((255 * 0.23).round()),
                      )
                    ]
                  ),
                  child: Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Samantha\n".toUpperCase(),
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            TextSpan(
                              text: "Russia".toUpperCase(),
                              style: TextStyle(
                                color: kPrimaryColor.withAlpha((255*0.5).round())
                              )
                            )
                          ]
                        )
                      ),
                      Text('\$440', 
                      style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: kPrimaryColor))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


