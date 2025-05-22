import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 2,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.2 -27,
                decoration: BoxDecoration(
                  
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}