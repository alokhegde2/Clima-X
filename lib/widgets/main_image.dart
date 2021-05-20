import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 200.0,
      child:Image.asset('assets/images/day/day_cloud.png'),
    );
  }
}