import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class LocationController extends GetxController {
  var latitude1 = ''.obs;
  var longitude1 = ''.obs;

  @override
  void onInit() {
    getCurrentLocation();
    super.onInit();
  }

  Future<void> getCurrentLocation() async {
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();

    // await Geolocator.openAppSettings();
    // await Geolocator.openLocationSettings();
    if (!isLocationServiceEnabled) {
      print("Location off");
      await Geolocator.openLocationSettings();
      return;
    }
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      latitude1(position.latitude.toString());
      longitude1(position.longitude.toString());
      // longitude = position.longitude;
      print("HEllo");
      print(latitude1);
    } catch (e) {
      print(e);
    }
  }
}
