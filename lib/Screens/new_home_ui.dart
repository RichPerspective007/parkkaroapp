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

class MyHomePage extends StatefulWidget {
   
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        backgroundColor: context.isDarkMode ? const Color(0xFF353535):Colors.white,
        extendBodyBehindAppBar: true,
        key: _scaffoldKey,
        drawer: NavDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Color(0xFFFFA41B),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                actions: [
                  IconButton(
                      icon: const Icon(Icons.account_circle_outlined,color: Colors.white,),
                      iconSize: 40,
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfileScreen()),
                      );// Add your search button functionality here
                      },
                    )
                ],
                leading: IconButton(
                      icon: const Icon(Icons.menu,color:Colors.white,),
                      iconSize: 40,
                      onPressed: () {
                        _scaffoldKey.currentState?.openDrawer();// Add your menu button functionality here
                      },
                    ),
                title: const Text('New Home',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),),
                centerTitle: true,
                bottom: const PreferredSize(
                  preferredSize: Size(60, 40), 
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Text(
                        'Hello, ',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Text(
                        username, // Replace with the user's first name
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ])),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(top: 10.0),
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
              ),
              if (bookings)
                homeItemHeaders(context, 'Bookings'),
                parkingSpotsBuilder(bookings, 'BookingID1', 'assets/images/park.png'),

              homeItemHeaders(context, 'Nearby Parkings'),
              parkingSpotsBuilder(false,null,null),
              homeItemHeaders(context, 'Recently Used Parkings'),
              parkingSpotsBuilder(false,null,null),
              homeItemHeaders(context, 'Favourites'),
              parkingSpotsBuilder(false,null,null),
            ],
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

  Widget parkingSpotsBuilder(bool bookedSlot,String? id,String? imgPath){
    return SliverToBoxAdapter(
                child: Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: bookedSlot?5:10,
                        itemBuilder: (context, index) {
                          if (bookedSlot){
                            return _bookedContentItem(id, imgPath);
                          }
                          return _buildContentItem('Parking $index', 'Description $index', 'assets/images/park.png');
                        },
                      ),
                    ),
                    
                    ]
                  ),
                ),
              );
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
  Widget _bookedContentItem(String? id, String? imagePath){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          width: 150,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePath.toString()),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5,),
        Container(
          margin: EdgeInsets.fromLTRB(5,0,5,5),
          padding: EdgeInsets.all(2),
          width: 150,
          height: 50,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),),
          child: Column(
          children: [
            Row(children: [Text('Time:'),Text('')]),
            Row(children: [Text('SlotID:'),Text('')]),
          ],
        ),)]
    );
  }
}
  Widget homeItemHeaders(BuildContext context, String categoryName){
    return SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        if (categoryName=='Favourites')
                          Icon(Icons.star,color: context.isDarkMode?Colors.white:Colors.black,),
                        Text(
                          categoryName,
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: context.isDarkMode?Colors.white:Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              );
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