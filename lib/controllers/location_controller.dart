import 'package:climax/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationController extends GetxController {
  var latitude1 = ''.obs;
  var longitude1 = ''.obs;
  var isLocationEnabled = false.obs;
  var isValueAvailable = false.obs;
  LocationPermission permission;

  @override
  void onInit() {
    getCurrentLocation();
    super.onInit();
  }

  Future<void> getCurrentLocation() async {
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        //Permissions are denied
        SystemNavigator.pop();
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      SystemNavigator.pop();
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isLocationServiceEnabled) {
      isLocationEnabled(false);
      print("Location off");
      Get.defaultDialog(
        title: "Failed to locate",
        titleStyle: GoogleFonts.ubuntu(color: kTextColor, height: 2.0),
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
      // try {
      //   Position position = await Geolocator.getLastKnownPosition();
      //   latitude1(position.latitude.toString());
      //   longitude1(position.longitude.toString());
      // } catch (e) {
      //   print(e);
      // }
      return;
    }
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      latitude1(position.latitude.toString());
      longitude1(position.longitude.toString());
      isValueAvailable(true);
      // longitude = position.longitude;
      // print("HEllo");
      isLocationEnabled(true);
      // print(latitude1);
    } catch (e) {
      print(e);
    }
  }
}
