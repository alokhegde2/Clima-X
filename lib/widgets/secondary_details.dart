import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class SecondaryDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SvgPicture.asset(
                "assets/icons/wind.svg",
                height: 28.0,
                width: 28.0,
              ),
              SizedBox(height: 8.0),
              Text(
                "24 km/hr",
                style: GoogleFonts.ubuntu(
                  color: kTextColor,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Wind",
                style: GoogleFonts.ubuntu(
                  color: kSecondaryTextColor,
                ),
              ),
            ],
          ),
          Column(
            children: [
              SvgPicture.asset(
                "assets/icons/humidity.svg",
                height: 28.0,
                width: 28.0,
              ),
              SizedBox(height: 8.0),
              Text(
                "24%",
                style: GoogleFonts.ubuntu(
                  color: kTextColor,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Humiity",
                style: GoogleFonts.ubuntu(
                  color: kSecondaryTextColor,
                ),
              ),
            ],
          ),
          Column(
            children: [
              SvgPicture.asset(
                "assets/icons/rain.svg",
                height: 28.0,
                width: 28.0,
              ),
              SizedBox(height: 8.0),
              Text(
                "84%",
                style: GoogleFonts.ubuntu(
                  color: kTextColor,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Chance of rain",
                style: GoogleFonts.ubuntu(
                  color: kSecondaryTextColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
