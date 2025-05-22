import 'package:flutter/material.dart';
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
        ],
      ),
    );
  }
}
