import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:parkeaseapp/Screens/get_started.dart';
import 'package:parkeaseapp/Screens/profile.dart';
import 'package:parkeaseapp/Screens/wallet_screen.dart';


class MyHomePage extends StatefulWidget {
   
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
      break;
    // Add cases for other pages
  }
  // Now navigate to the corresponding page based on the index
  // You can use Navigator.push or your preferred navigation method
}
  @override
  Widget build(BuildContext context) {
    const String username = 'User'; // Change this value to take first name from profile.
    _checkLocationService(context);
    List<String> stringList = [];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90), // Specify the desired height
        child: Container(
          margin: EdgeInsets.all(8), // Add margins
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
                    'Home',
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
      
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10), // Left and right margins
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20), // Adjust spacing as needed
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 1), // Add border decoration
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Add your search functionality here
                      },
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search using landmark, street, monument or location.',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Add spacing between search bar and categories
              // Add spacing between categories and content
              // Content for the selected category
              // Example:
              _buildCategoryContent('Recent Used Parkings', [
                // List of content items for Recent Places category
                // Example:
                _buildContentItem('Parking 1', 'Description 1', 'image1.jpg'),
                _buildContentItem('Parking 2', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 3', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 4', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 5', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 6', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 7', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 8', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 9', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 10', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 11', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 12', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 13', 'Description 2', 'image2.jpg'),
                // ...
              ],),
              SizedBox(height: 20), // Add spacing between search bar and categories
              // Add spacing between categories and content
              // Content for the selected category
              // Example:
              _buildCategoryContent('Recent Used Parkings', [
                // List of content items for Recent Places category
                // Example:
                _buildContentItem('Parking 1', 'Description 1', 'image1.jpg'),
                _buildContentItem('Parking 2', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 3', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 4', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 5', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 6', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 7', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 8', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 9', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 10', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 11', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 12', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 13', 'Description 2', 'image2.jpg'),
                // ...
              ],),
              SizedBox(height: 20), // Add spacing between search bar and categories
              // Add spacing between categories and content
              // Content for the selected category
              // Example:
              _buildCategoryContent('Recent Used Parkings', [
                // List of content items for Recent Places category
                // Example:
                _buildContentItem('Parking 1', 'Description 1', 'image1.jpg'),
                _buildContentItem('Parking 2', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 3', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 4', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 5', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 6', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 7', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 8', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 9', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 10', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 11', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 12', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 13', 'Description 2', 'image2.jpg'),
                // ...
              ],),
              SizedBox(height: 20), // Add spacing between search bar and categories
              // Add spacing between categories and content
              // Content for the selected category
              // Example:
              _buildCategoryContent('Recent Used Parkings', [
                // List of content items for Recent Places category
                // Example:
                _buildContentItem('Parking 1', 'Description 1', 'image1.jpg'),
                _buildContentItem('Parking 2', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 3', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 4', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 5', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 6', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 7', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 8', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 9', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 10', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 11', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 12', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 13', 'Description 2', 'image2.jpg'),
                // ...
              ],),
              SizedBox(height: 20), // Add spacing between search bar and categories
              // Add spacing between categories and content
              // Content for the selected category
              // Example:
              _buildCategoryContent('Recent Used Parkings', [
                // List of content items for Recent Places category
                // Example:
                _buildContentItem('Parking 1', 'Description 1', 'image1.jpg'),
                _buildContentItem('Parking 2', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 3', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 4', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 5', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 6', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 7', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 8', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 9', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 10', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 11', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 12', 'Description 2', 'image2.jpg'),
                _buildContentItem('Parking 13', 'Description 2', 'image2.jpg'),
                // ...
              ],),
              // Repeat similar content sections for other categories
            ],
          ),
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
)

, // Padding widget ends here
    ); // Scaffold widget ends here
  }

  Widget _buildContentItem(String title, String description, String imagePath) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(description),
      ],
    );
  }

  Widget _buildCategoryContent(String categoryName, List<Widget> contentItems) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          categoryName,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
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