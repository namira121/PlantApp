import 'package:flutter/material.dart';
import 'package:plant_app_081/constants.dart';
import 'package:plant_app_081/screens/details/details_screen.dart';
class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            press: (){
              Navigator.push(context, 
              MaterialPageRoute(
                builder: (context)=> DetailsScreen())
              );
            },
            price: 440,
          ),
          RecommendPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            press: (){
              Navigator.push(context, 
              MaterialPageRoute(
                builder: (context)=> DetailsScreen())
              );
            },
            price: 450,
          ),
          RecommendPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            press: (){},
            price: 440,
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    super.key, 
    required this.image, 
    required this.title, 
    required this.country, 
    required this.price, 
    required this.press,
  });

  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                ),
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
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withAlpha((255*0.5).round())
                          )
                        )
                      ]
                    )
                  ),
                  Text('\$$price', 
                  style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: kPrimaryColor))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}