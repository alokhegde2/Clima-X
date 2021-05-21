import 'package:climax/constants.dart';
import 'package:climax/controllers/location_controller.dart';
import 'package:climax/views/future_forecast.dart';
import 'package:climax/widgets/main_image.dart';
import 'package:climax/widgets/secondary_details.dart';
import 'package:climax/widgets/weather_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final locationController = Get.put(LocationController());
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: 10.0),
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
                            locationController.onInit();
                          },
                          icon: Icon(
                            CupertinoIcons.square_grid_2x2_fill,
                            color: kIconColor,
                          ),
                        ),
                        SizedBox(
                          width: 50.0,
                          child: Obx(
                            () => Text(
                              locationController.latitude1.toString(),
                              overflow: TextOverflow
                                  .ellipsis, //Current location or city Name should comr here
                              style: GoogleFonts.ubuntu(
                                color: kTextColor,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
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
                      height: 30.0,
                    ),
                    MainImage(),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "21\u2070",
                      style: GoogleFonts.ubuntu(
                          fontSize: 80.0,
                          color: kTextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Thunderstorm",
                      style: GoogleFonts.ubuntu(
                        fontSize: 28.0,
                        color: kTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
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
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding + 20,
                  vertical: kDefaultPadding + 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today",
                        style: GoogleFonts.ubuntu(
                            color: kTextColor, fontSize: 20.0),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(FutureForecast());
                        },
                        child: Row(
                          children: [
                            Text(
                              "7 days",
                              style: GoogleFonts.ubuntu(
                                  color: kSecondaryTextColor, fontSize: 16.0),
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Icon(
                              CupertinoIcons.chevron_forward,
                              color: kSecondaryIconColor,
                              size: 16.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(child: WeatherCard());
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
