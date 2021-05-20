import 'package:climax/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      width: MediaQuery.of(context).size.width,
      height: 20.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Mon",
            style: GoogleFonts.ubuntu(color: kSecondaryTextColor),
          ),
          Row(
            children: [
              Image.asset('assets/images/day/day_cloud.png'),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "Cloudy",
                style: GoogleFonts.ubuntu(color: kSecondaryTextColor),
              ),
            ],
          ),
          Text(
            "+20/-14",
            style: GoogleFonts.ubuntu(color: kSecondaryTextColor),
          )
        ],
      ),
    );
  }
}
