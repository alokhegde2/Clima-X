import 'package:climax/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        padding:
            EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: 10.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.75,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kMainColor1, kMainColor2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          ),
          boxShadow: [
            BoxShadow(
              color: kShadowColor,
              offset: const Offset(
                1.0,
                10.0,
              ),
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.square_grid_2x2_fill,
                      color: kIconColor,
                    ),
                  ),
                  Text(
                    "Minsk",
                    style: GoogleFonts.ubuntu(
                      color: kTextColor,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.building_2_fill,
                      color: kIconColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
