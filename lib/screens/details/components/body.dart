import 'package:flutter/material.dart';

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
            
          )
        ],
        )
      ],
    );
  }
}