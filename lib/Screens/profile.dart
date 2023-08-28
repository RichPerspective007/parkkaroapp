import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/clickable_container.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/Screens/get_started.dart';
import 'package:parkeaseapp/Screens/home_page_2.dart';
import 'package:parkeaseapp/Screens/settings_screen.dart';
import 'package:parkeaseapp/Screens/wallet_screen.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
      Navigator.push(context, MaterialPageRoute(builder: (context) => GetStarted()));
      break;
    case 2:
      Navigator.push(context, MaterialPageRoute(builder: (context) => WalletScreen()));
      break;
    case 3:
      break;
    // Add cases for other pages
  }
  // Now navigate to the corresponding page based on the index
  // You can use Navigator.push or your preferred navigation method
}
  @override
  Widget build(BuildContext context) {
    double scrWidth = Constants.screenWidth(context);
    double scrHeight = Constants.screenHeight(context);
    const String userName = 'User';
    const String carNumberPlate = 'WB **** ** 7845';
    print(scrHeight);
    print(scrWidth);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin:EdgeInsets.all(20),
          child: Column(
                  children: [
                    Container(
                      width: 350,
                      height: scrHeight/2,
                      decoration: ShapeDecoration(
                          color: Color(0xFF3392EA),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                          ),
                      ),
                      child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // First Child: Row with Icon and Text
                                  SizedBox(
                                    height:20
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(margin:EdgeInsets.fromLTRB(5, 0, 0, 0),child: Icon(Icons.menu, color: Colors.white,)), // Replace with your desired icon
                                      Text(
                                        'Profile',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27, color: Colors.white),
                                      ),
                                      SizedBox(width: 24.0), // Add space on the right
                                    ],
                                  ),
                                  SizedBox(height: 24.0), // Space between rows

                                  // Second Child: Circular Profile Image
                                  Container(
                                    width: scrHeight/4,
                                    height: scrHeight/4,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey, // Placeholder color
                                    ),
                                    child: Image.asset('assets/images/profile-photo.png'),
                                  ),
                                  SizedBox(height: 16.0), // Space between rows

                                  // Third Child: Centered Text
                                  Row(
                                    children: [
                                      SizedBox(
                                        width:scrWidth/2 - 70,
                                      ),
                                      Text(
                                        'Hello, ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
                                      ),
                                      Text(
                                        userName,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 12.0), // Space between rows

                                  // Fourth Child: Centered Text
                                  Text(
                                    '004.67 TK',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                                  ),
                                ], // End of Column children
                              ),
                    ),
                    SizedBox(
                      height: 10
                    ),
                    Container(
                      width: 345,
                      height: scrHeight/8,
                      decoration: ShapeDecoration(
                          color: Color(0xFF353535),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                          ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(carNumberPlate,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomizedClickableContainer.icon(
                      text: 'Edit Profile',
                      customIconData: Icons.account_circle_outlined,
                      onTap: () {
                        // Action for tapping container
                      },
                      customContainerColor: Colors.white24,    // Custom container color
                      customContainerHeight: scrHeight/(800/60),        // Custom container height
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomizedClickableContainer.icon(
                      text: 'Car Details',
                      customIconData: Icons.car_rental,
                      onTap: () {
                        // Action for tapping container
                      },
                      customContainerColor: Colors.white24,    // Custom container color
                      customContainerHeight: scrHeight/(800/60),        // Custom container height
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomizedClickableContainer.icon(
                      text: 'Settings',
                      customIconData: Icons.settings,
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Settings()),
                      );// Action for tapping container
                      },
                      customContainerColor: Colors.white24,    // Custom container color
                      customContainerHeight: scrHeight/(800/60),        // Custom container height
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomizedClickableContainer.icon(
                      text: 'Help',
                      customIconData: Icons.help,
                      onTap: () {
                        // Action for tapping container
                      },
                      customContainerColor: Colors.white24,    // Custom container color
                      customContainerHeight: scrHeight/(800/60),        // Custom container height
                    ),
                    SizedBox(
                      height: 12,
                    ),

                    
                ],),
        ),
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