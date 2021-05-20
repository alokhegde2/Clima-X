import 'package:climax/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      width: 80.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: kSecondaryTextColor,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "28\u2070",
            style: GoogleFonts.ubuntu(
              color: kTextColor,
              fontSize: 15.0,
            ),
          ),
          Image.asset("assets/images/night/night_rain.png"),
          Text(
            "10:00",
            style: GoogleFonts.ubuntu(
              color: kTextColor,
              fontSize: 15.0,
            ),
          )
        ],
      ),
    );
  }
}
