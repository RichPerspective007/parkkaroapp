import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/Screens/bookpay.dart';
import 'package:parkeaseapp/Screens/menu_widget.dart';
import 'package:parkeaseapp/Screens/navigation.dart';
import 'package:parkeaseapp/Screens/profile.dart';
import 'package:parkeaseapp/Screens/search_page.dart';
import 'package:parkeaseapp/Screens/wallet_screen.dart';
import 'package:parkeaseapp/main.dart';

class OldHomePage extends StatefulWidget {
   
  @override
  State<OldHomePage> createState() => _OldHomePageState();
}

class _OldHomePageState extends State<OldHomePage> {
  int currentPageIndex = 0; // Initialize with the default selected index

  void _onItemTapped(int index) {
  switch (index) {
    case 0:
      break;
    case 1:
      Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationScreen()));
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
  void _dismissKeyboard(BuildContext context) {
    final FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    currentPageIndex=0;
    print(Constants.screenHeight);
    const String username = 'User';
    bool bookings=true; // Change this value to take first name from profile.
    _checkLocationService(context);
    List<String> stringList = []; //list of bookings
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        key: _scaffoldKey,
        drawer: NavDrawer(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120), // Specify the desired height
          child: Container(
            margin: EdgeInsets.all(8), // Add margins
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
                        _scaffoldKey.currentState?.openDrawer();// Add your menu button functionality here
                      },
                    ),
                    const Text(
                      'Home',
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
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: context.isDarkMode ? Color(0xFF353535):Colors.white ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 130), // Adjust spacing as needed
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black, width: 1), // Add border decoration
                  ),
                  child: GestureDetector(
                    onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
                        },
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.search),
                          color: context.isDarkMode?Colors.white:Colors.black,
                          onPressed: () {
                            // Add your search functionality here
                          },
                        ),
                        Container(
                            child: Text(
                              'Search using landmark, street, or monument.',
                              style: TextStyle(fontWeight: FontWeight.w300,color: context.isDarkMode?Colors.white:Colors.black),
                              ),
                          ),
                        
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add spacing between search bar and categories
                // Add spacing between categories and content
                // Content for the selected category
                // Example:
                if (bookings)
                  _buildCategoryContent('Bookings',[_bookedContentItem('BookingID1', 'assets/images/park.png'),
                  _bookedContentItem('BookingID2', 'assets/images/park.png'),]),
                
                Text(
                  'Nearby Parkings',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: context.isDarkMode?Colors.white:Colors.black),
                ),
                
                _buildCategoryContent('Nearby Parkings', [
                  // List of content items for Recent Places category
                  // Example:
                  _buildContentItem('Parking 1', 'Description 1', 'assets/images/park.png'),
                  _buildContentItem('Parking 2', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 3', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 4', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 5', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 6', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 7', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 8', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 9', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 10', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 11', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 12', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 13', 'Description 2', 'assets/images/park.png'),
                  // ...
                ],),
                SizedBox(height: 20), // Add spacing between search bar and categories
                // Add spacing between categories and content
                // Content for the selected category
                // Example:
                _buildCategoryContent('Recent Used Parkings', [
                  // List of content items for Recent Places category
                  // Example:
                  _buildContentItem('Parking 1', 'Description 1', 'assets/images/park.png'),
                  _buildContentItem('Parking 2', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 3', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 4', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 5', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 6', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 7', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 8', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 9', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 10', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 11', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 12', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 13', 'Description 2', 'assets/images/park.png'),
                  // ...
                ],),
                SizedBox(height: 20), // Add spacing between search bar and categories
                // Add spacing between categories and content
                // Content for the selected category
                // Example:
                _buildCategoryContent('Favourites', [
                  // List of content items for Recent Places category
                  // Example:
                  _buildContentItem('Parking 1', 'Description 1', 'assets/images/park.png'),
                  _buildContentItem('Parking 2', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 3', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 4', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 5', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 6', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 7', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 8', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 9', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 10', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 11', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 12', 'Description 2', 'assets/images/park.png'),
                  _buildContentItem('Parking 13', 'Description 2', 'assets/images/park.png'),
                  // ...
                ],),
                SizedBox(height: 20), // Add spacing between search bar and categories
                // Add spacing between categories and content
                // Content for the selected category
                // Example:
                
                // Repeat similar content sections for other categories
              ],
            ),
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
        // Padding widget ends here
      ),
    ); // Scaffold widget ends here
  }

  Widget _buildContentItem(String title, String description, String imagePath) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
            MaterialPageRoute(builder: (context) => PayAndBook()),
          );
      },
      child: Container(
        margin:EdgeInsets.fromLTRB(0, 5, 5, 5),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Container(
                width: 150,
                height: 70,
                alignment: Alignment.center,
                margin:const EdgeInsets.fromLTRB(5, 5, 0, 5),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),),
                child:Column(children: [Text('Parking Name'),
                Text('Street Name',style: TextStyle(fontSize: 12),),
                Text('Open',style: TextStyle(fontSize: 10,color: Colors.green)),
                Text('Full',style:TextStyle(color:Colors.red, fontSize:10)),
                
                ],),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _bookedContentItem(String id, String imagePath){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          width: 150,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5,),
        Container(
          margin: const EdgeInsets.fromLTRB(5,0,5,5),
          padding: const EdgeInsets.all(2),
          width: 150,
          height: 50,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),),
          child: const Column(
          children: [
            Row(children: [Text('Time:'),Text('')]),
            Row(children: [Text('SlotID:'),Text('')]),
          ],
        ),)]
    );
  }
  Widget _buildCategoryContent(String categoryName, List<Widget> contentItems) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            if (categoryName == 'Favourites')
              Icon(Icons.star,color: context.isDarkMode?Colors.white:Colors.black,),
            Text(
              categoryName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: context.isDarkMode?Colors.white:Colors.black),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: contentItems,
          ),
        ),
      ],
    );
  }
}




Future<void> _checkLocationService(BuildContext context) async {
  if (!await Geolocator.isLocationServiceEnabled()) {
    showDialog(
      context: (context),
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enable Location Services'),
          content: Text('Please enable location services to use this feature.'),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Enable'),
              onPressed: () async {
                await Geolocator.openLocationSettings();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}