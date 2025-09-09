import 'package:geolocator/geolocator.dart';

class LocatorService {
  Position? _lastRecordedPosition;
  Position? get lastRecordedPosition => _lastRecordedPosition;

  // Start tracking
  void startTracking({required Function(Position pos) handlePos}) async {
    Geolocator.getPositionStream(
      locationSettings: LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 20,
      ),
    ).listen((Position position) {
      if (_lastRecordedPosition == null) {
        _lastRecordedPosition = position;
        handlePos(position);
      } else {
        double distance = Geolocator.distanceBetween(
          _lastRecordedPosition!.latitude,
          _lastRecordedPosition!.longitude,
          position.latitude,
          position.longitude,
        );

        if (distance >= 30) {
          _lastRecordedPosition = position;
          handlePos(position);
        }
      }
    });
  }

  // Get current location
  Future<Position?> getCurrentLocation() async {
    if (!(await isPermit())) {
      await requestPermissions();
    }

    if (await isPermit()) {
      return await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(accuracy: LocationAccuracy.high),
      );
    }
    return null;
  }

  // Check location permission
  Future<bool> isPermit() async {
    LocationPermission permission = await Geolocator.checkPermission();
    return permission != LocationPermission.denied &&
        permission != LocationPermission.deniedForever;
  }

  // Request location permission
  Future<void> requestPermissions() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return;
    }
  }
}
