import 'package:climax/widgets/main_image.dart';
import 'package:climax/widgets/secondary_details.dart';
import 'package:climax/widgets/weather_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class FutureForecast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: 10.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.45,
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
                      0.0,
                      5.0,
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
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            CupertinoIcons.chevron_left_circle,
                            color: kIconColor,
                          ),
                        ),
                        Text(
                          "Minsk", //Current location or city Name should comr here
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
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          height: 110.0,
                          width: 110.0,
                          child: MainImage(),
                        ),
                        Text(
                          "21\u2070",
                          style: GoogleFonts.ubuntu(
                              fontSize: 60.0,
                              color: kTextColor,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Divider(
                      color: kIconColor.withOpacity(0.15),
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SecondaryDetails(),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.55,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                  vertical: kDefaultPadding + 10),
                  child: ListView.builder(itemCount:10,itemBuilder: (context,index){
                    return WeatherTile();
                  },),
            ),
          ],
        ),
      ),
    );
  }
}
