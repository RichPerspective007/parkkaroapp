import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/clickable_container.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/Screens/home_page_2.dart';
import 'package:parkeaseapp/Screens/menu_widget.dart';
import 'package:parkeaseapp/Screens/navigation.dart';
import 'package:parkeaseapp/Screens/settings_screen.dart';
import 'package:parkeaseapp/Screens/wallet_screen.dart';
import 'package:parkeaseapp/main.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentPageIndex = 3; // Initialize with the default selected index

  void _onItemTapped(int index) {
  switch (index) {
    case 0:
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
      break;
    case 1:
      Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationScreen()));
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
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    double scrWidth = Constants.screenWidth(context);
    double scrHeight = Constants.screenHeight(context);
    const String userName = 'User';
    const String carNumberPlate = 'WB **** ** 7845';
    return Scaffold(
      key: scaffoldKey,
      drawer: NavDrawer(),
      body: SingleChildScrollView(
        child: Container(
          color: context.isDarkMode?Color(0xFF353535):Colors.white,
          width: scrWidth,
          child: Column(
                  children: [
                    SizedBox(height:10),
                    Container(
                      width: 350,
                      height: scrHeight/2,
                      decoration: ShapeDecoration(
                          color: Color(0xFFFFA41B),
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
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.menu,color:Colors.white,),
                                        iconSize: 40,
                                        onPressed: () {
                                          scaffoldKey.currentState?.openDrawer();// Add your menu button functionality here
                                        },
                                      ),
                                      SizedBox(width:60), // Replace with your desired icon
                                      Text(
                                        'Profile',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27, color: Colors.white),
                                      ),
                                      SizedBox(width: 10.0), // Add space on the right
                                    ],
                                  ),
                                  SizedBox(height: 10.0), // Space between rows

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
                                  SizedBox(height: 13.0), // Space between rows

                                  // Third Child: Centered Text
                                  Row(
                                    children: [
                                      SizedBox(
                                        width:scrWidth/2 - 80,
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
                                  SizedBox(height: 5.0), // Space between rows

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
                              side: BorderSide(
                                width: 2,
                                color: context.isDarkMode ? Colors.blue: Colors.transparent,
                            )
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
      bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
              _onItemTapped(currentPageIndex);
            });
          },
          height: 60,
          labelBehavior:NavigationDestinationLabelBehavior.alwaysHide,
          animationDuration: Duration(milliseconds: 1000),
          indicatorColor: Color(0xFFD9D9D9),
          backgroundColor: Color(0xFF00B400),
          selectedIndex: currentPageIndex,
          destinations: const [
                  NavigationDestination(
                    icon: Icon(Icons.home, color: Colors.white,),
                    selectedIcon: Icon(Icons.home, color: Color(0xFF00B400),size:34),
                    label: 'Home',
                    
                  ),
                  NavigationDestination(
                    icon:Icon(Icons.map_outlined, color: Colors.white),
                    selectedIcon: Icon(Icons.map,color: Color(0xFF00B400),size: 34,),
                    label: 'Navigation',
                  ),
                  NavigationDestination(
                    icon:Icon(Icons.wallet, color: Colors.white),
                    selectedIcon: Icon(Icons.wallet, color: Color(0xFF00B400),size:34),
                    label: 'Wallet',
                  ),
                  NavigationDestination(
                    icon:Icon(Icons.account_circle_outlined, color: Colors.white),
                    selectedIcon: Icon(Icons.account_circle,color: Color(0xFF00B400),size:34),
                    label: 'Account',
                  ),
                ],
        ),
      );
  }
}