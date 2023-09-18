import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/clickable_container.dart';
import 'package:parkeaseapp/Screens/home_page_2.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/Screens/menu_widget.dart';
import 'package:parkeaseapp/Screens/navigation.dart';
import 'package:parkeaseapp/Screens/profile.dart';
import 'package:parkeaseapp/main.dart';
class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  static const String username = 'User';
  int currentPageIndex = 2; // Initialize with the default selected index

  void _onItemTapped(int index) {
  switch (index) {
    case 0:
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
      break;
    case 1:
      Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationScreen()));
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
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    double scrWidth = Constants.screenWidth(context);
    double scrHeight = Constants.screenHeight(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: scaffoldKey,
      drawer: NavDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110), // Specify the desired height
        child: Container(
          margin: const EdgeInsets.all(8), // Add margins
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), // Add border radius
            color: Color(0xFFFFA41B),
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
                      scaffoldKey.currentState?.openDrawer();// Add your menu button functionality here
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
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()),
                    );// Add your search button functionality here
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
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
        color: context.isDarkMode ? Color(0xFF353535): Colors.white ,
        child: Column(
          children: [
            SizedBox(height: 110,),
            Container(
            width: scrWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
                  width: 160,
                  height: 250,
                  margin:EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                      color:  context.isDarkMode ? Color(0xFF00BABA): Color(0xFF353535) ,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                      ),
                  ),
                  child:Column(
                    children: [
                      SizedBox(height:20),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Image(image: AssetImage('assets/images/card_provider.png'))
                        ],
                      ),
                      Text('**** 5482',style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w600),),
                      SizedBox(height:80),
                      Text('Card Owner',style:TextStyle(color:Colors.white)),
                      Text('User',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500)),
                      Text('04/24',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w400)),
                    ],
                  )
              ),
              Container(
                  width: 170,
                  height: 250,
                  margin:EdgeInsets.fromLTRB(2, 8, 8, 8),
                  decoration: ShapeDecoration(
                      color: Colors.transparent,
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
                          color: context.isDarkMode ? Colors.white70: Colors.white38,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                          ),
                      ),
                      child:Center(
                        child:Column(
                          children: [
                            SizedBox(height:35),
                            Text('004.67TK',style:TextStyle(color:Colors.black,fontSize: 24,fontWeight: FontWeight.bold)),
                            Text('Total tokens')
                          ],
                        )
                      )
                    ),
                    Container(
                      width: 170,
                      height: 120,
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      decoration: ShapeDecoration(
                          color: context.isDarkMode ? Color(0xFF00BABA): Color(0xFF353535),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                                ),
                            ),
                          child:Center(
                            child:Column(
                              children: [
                                SizedBox(height:35),
                                Text('99.99 INR',style:TextStyle(color:Colors.white,fontSize: 24,fontWeight: FontWeight.bold)),
                                Text('Total balance',style: TextStyle(color: Colors.white),)
                              ],
                            )
                          )
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
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),
                        );*/
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
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),
                        );*/
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
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),
                        );*/
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
                    CustomizedClickableContainer.asset(
                        text: 'Legal',
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
      
          ]),
      )),
        
      
      bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
              _onItemTapped(currentPageIndex);
              currentPageIndex = 2;
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