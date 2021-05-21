import 'package:climax/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CityManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("City Management"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: kMainColor1,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Edit",
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            CupertinoIcons.back,
            color: kMainColor1,
          ),
        ),
      ),
    );
  }
}
