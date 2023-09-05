import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

Future<LatLng> _getUserLocation() async {
  final LocationData locationData = await Location().getLocation();
  return LatLng(locationData.latitude!, locationData.longitude!);
}

class NavigationScreen extends StatefulWidget {
  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  LatLng? _initialPosition = null;

  @override
  void initState() {
    super.initState();
    _getUserLocation().then((LatLng location) {
      setState(() {
        _initialPosition = location;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    // Initialize the Flutter Map controller
    final mapController = MapController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Screen'),
      ),
      body: _initialPosition == null
          ? Center(
              child: CircularProgressIndicator(), // Show loading indicator while getting the location.
            )
          : FlutterMap(
              mapController: mapController,
              options: MapOptions(
                center: _initialPosition,
                zoom: 13.0,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'c'],
                ),
              ],
            ),
    );
  }
}
