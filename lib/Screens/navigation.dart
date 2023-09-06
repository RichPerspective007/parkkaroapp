import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
import 'package:parkeaseapp/Screens/home_page_2.dart';
import 'package:parkeaseapp/Screens/profile.dart';
import 'dart:async';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';

import 'package:parkeaseapp/Screens/wallet_screen.dart';

Future<LatLng> _getUserLocation() async {
  final LocationData locationData = await Location().getLocation();
  return LatLng(locationData.latitude!, locationData.longitude!);
}

class NavigationScreen extends StatefulWidget {
  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  late LatLng? _initialPosition = null;
  late MapController? _mapController;
  late List<Marker> _markers=[]; // Define a marker for the user's location

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
    _getUserLocation().then((LatLng location) {
      setState(() {
        _initialPosition = location;
        // Create a marker for the user's location
        _markers.add(Marker(
          width: 50.0,
          height: 50.0,
          point: location,
          builder: (ctx) => const Icon(
            Icons.location_on, // You can use a custom icon here
            color: Colors.red,
            size: 40.0,
          ),
        ),
        );
      });
    });
  }
  int _selectedIndex = 0; // Initialize with the default selected index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
  });
  switch (index) {
    case 0:
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
      break;
    case 1:
      break;
    case 2:
      Navigator.push(context, MaterialPageRoute(builder: (context) => WalletScreen()));
      break;
    case 3:
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
      break;
    // Add cases for other pages
   }
  // Now navigate to the corresponding page based on the index
  // You can use Navigator.push or your preferred navigation method
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60), // Specify the desired height
        child: Container(
          margin: EdgeInsets.all(8), // Add margins
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), // Add border radius
            color: Colors.blue,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back,color:Colors.white,),
                    iconSize: 40,
                    onPressed: () {
                      Navigator.pop(context);// Add your menu button functionality here
                    },
                  ),
                  SizedBox(width:15),
                  const Text(
                    'Plan Your Parking',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  ]),
              
              ],
            
          ),
        ),
        ),
      body: _initialPosition == null
          ? Center(
              child: CircularProgressIndicator(), // Show loading indicator while getting the location.
            )
          : FlutterMap(
              mapController: _mapController,
              options: MapOptions(
                center: _initialPosition,
                zoom: 18.0,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'c'],
                ),
                CurrentLocationLayer(
                  followOnLocationUpdate: FollowOnLocationUpdate.always,
                  turnOnHeadingUpdate: TurnOnHeadingUpdate.never,
                  style: LocationMarkerStyle(
                    marker: const DefaultLocationMarker(
                      child: Icon(
                        Icons.navigation,
                        color: Colors.white,
                      ),
                    ),
                    markerSize: const Size(40, 40),
                    markerDirection: MarkerDirection.heading,
                  ),
                )
              ],
            ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.white),
                    label: 'Home',
                    
                  ),
                  BottomNavigationBarItem(
                    icon:Icon(Icons.map_outlined, color: Colors.white),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    icon:Icon(Icons.wallet, color: Colors.white),
                    label: 'Wallet',
                  ),
                  BottomNavigationBarItem(
                    icon:Icon(Icons.account_circle_outlined, color: Colors.white),
                    label: 'Account',
                  ),
                ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
