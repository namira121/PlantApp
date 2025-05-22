import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_081/constants.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height*0.8,
          child: Row(
            children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding*3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        onPressed: (){
                          Navigator.pop(context);
                        }, 
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        ),
                    ),
                    Spacer(),
                    IconCard(icon: "assets/icons/sun.svg",)
                  ],
                ),
              )
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
          ),
        )
      ],
    );
  }
}

class IconCard extends StatelessWidget {
  const IconCard({
    super.key, 
    required this.icon,
    
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height *0.3),
      padding: EdgeInsets.all(kDefaultPadding/2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: kPrimaryColor.withAlpha((255*0.22).round())
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white
          )
        ]
      ),
      child: SvgPicture.asset(icon),
    );
  }
}