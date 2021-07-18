import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;


  Future<void> getCurrentLocation() async {
    try {
      Geolocator geolocator = Geolocator()
        ..forceAndroidLocationManager = true;

      Position position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      latitude = position.latitude;
    } catch (e) {
      print(e);
    }
  }
}