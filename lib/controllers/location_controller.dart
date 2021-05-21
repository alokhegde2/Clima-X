import 'package:climax/constants.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationController extends GetxController {
  var latitude1 = ''.obs;
  var longitude1 = ''.obs;
  var isLocationEnabled = false.obs;

  @override
  void onInit() {
    getCurrentLocation();
    super.onInit();
  }

  Future<void> getCurrentLocation() async {
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isLocationServiceEnabled) {
      isLocationEnabled(false);
      print("Location off");
      Get.defaultDialog(
        title: "Failed to locate",
        titleStyle: GoogleFonts.ubuntu(color: kTextColor,height: 2.0),
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
          child: Text(
            "Failed to locate,please enable network-based locaton service in Settings.",
            style: GoogleFonts.ubuntu(color: kTextColor),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Cancel"),
          ),
          SizedBox(
            width: 20.0,
          ),
          TextButton(
            onPressed: () async {
              await Geolocator.openLocationSettings();
            },
            child: Text("Enable"),
          ),
        ],
        backgroundColor: kPrimaryColor,
        radius: 10.0,

      );
      return;
    }
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      latitude1(position.latitude.toString());
      longitude1(position.longitude.toString());
      // longitude = position.longitude;
      print("HEllo");
      isLocationEnabled(true);
      print(latitude1);
    } catch (e) {
      print(e);
    }
  }
}
