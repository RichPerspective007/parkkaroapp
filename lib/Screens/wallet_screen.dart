import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/clickable_container.dart';
import 'package:parkeaseapp/Screens/get_started.dart';
import 'package:parkeaseapp/Screens/home_page_2.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/Screens/profile.dart';
class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  static const String username = 'User';
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
      break;
    case 3:
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
      break;// Add cases for other pages
  }
  // Now navigate to the corresponding page based on the index
  // You can use Navigator.push or your preferred navigation method
} // Change this value to take first name from profile.
  @override
  Widget build(BuildContext context) {
    double scrWidth = Constants.screenWidth(context);
    double scrHeight = Constants.screenHeight(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90), // Specify the desired height
        child: Container(
          margin: const EdgeInsets.all(8), // Add margins
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), // Add border radius
            color: Colors.blue,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu,color:Colors.white,),
                    iconSize: 40,
                    onPressed: () {
                      // Add your menu button functionality here
                    },
                  ),
                  const Text(
                    'Wallet',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  IconButton(
                    icon: const Icon(Icons.account_circle_outlined,color: Colors.white,),
                    iconSize: 40,
                    onPressed: () {
                      // Add your search button functionality here
                    },
                  ),]),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Text(
                      'Hello, ',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Text(
                      username, // Replace with the user's first name
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),],
            
          ),
        ),
        ),
      body: SingleChildScrollView
      (child: Column(
        children: [Container(
          width: scrWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
                width: 160,
                height: 250,
                margin:EdgeInsets.all(7),
                decoration: ShapeDecoration(
                    color: Color(0xFF353535),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                    ),
                ),
            ),
            Container(
                width: 170,
                height: 250,
                margin:EdgeInsets.all(8),
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                    ),
                ),
                child:Column(children: [
                  Container(
                    width: 170,
                    height: 120,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    decoration: ShapeDecoration(
                        color: Color(0xFF353535),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                        ),
                    ),
                      ),
                  Container(
                    width: 170,
                    height: 120,
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    decoration: ShapeDecoration(
                        color: Color(0xFF353535),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                              ),
                          ),
                            ),
                        ]),
                      
                      ),
              
                    ],),
                  ),
                  MyClickableContainer(
                    text: 'Google Pay',
                    customIconAsset: 'assets/images/google-fill.svg',
                    onTap: () {
                      // Navigate to a different screen when container is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyClickableContainer(
                    text: 'Credit/Debit Card',
                    customIconAsset: 'assets/images/card.svg',
                    onTap: () {
                      // Navigate to a different screen when container is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyClickableContainer(
                    text: 'UPI',
                    customIconAsset: 'assets/images/rupee.svg',
                    onTap: () {
                      // Navigate to a different screen when container is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomizedClickableContainer.asset(
                      text: 'Transaction History',
                      customIconAsset: 'assets/images/history.svg',
                      onTap: () {
                        // Action for tapping container
                      },
                      customContainerColor: Colors.white24,    // Custom container color
                      customContainerHeight: scrHeight/(800/60),        // Custom container height
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomizedClickableContainer.asset(
                      text: 'Recharge Tokens',
                      customIconAsset: 'assets/images/tokens.svg',
                      onTap: () {
                        // Action for tapping container
                      },
                      customContainerColor: Colors.white24,    // Custom container color
                      customContainerHeight: scrHeight/(800/60),        // Custom container height
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomizedClickableContainer.asset(
                      text: 'Referrals',
                      customIconAsset: 'assets/images/referrals.svg',
                      onTap: () {
                        // Action for tapping container
                      },
                      customContainerColor: Colors.white24,    // Custom container color
                      customContainerHeight: scrHeight/(800/60),        // Custom container height
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomizedClickableContainer.asset(
                      text: 'Rewards and Offers',
                      customIconAsset: 'assets/images/rewards.svg',
                      onTap: () {
                        // Action for tapping container
                      },
                      customContainerColor: Colors.white24,    // Custom container color
                      customContainerHeight: scrHeight/(800/60),        // Custom container height
                    ),
                  SizedBox(
                    height: 10,
                  ),

    ])),
        
      
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
  ),)
        );
  }
}