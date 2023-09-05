import 'package:flutter/material.dart';
import 'package:parkeaseapp/Screens/home_page_2.dart';
import 'package:parkeaseapp/Screens/profile.dart';
import 'package:parkeaseapp/Screens/wallet_screen.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
  });
  switch (index) {
    case 0:
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
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
      body: Column(
        children: [
          // Search Bar
          Container(
            width: 345,
            height: 60,
            decoration: ShapeDecoration(
            color: Color(0xFFEEEEEE),
            shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.50, color: Color(0xFF202020)),
            borderRadius: BorderRadius.circular(25),
            ),
            ),
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.search,
                  size: 36.0, // Adjust the size of the icon as needed
                ),
                SizedBox(width: 10.0), // Add spacing between icon and text field
                Expanded(
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      // Remove the underline by setting the border to none
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Search Suggestions (you can replace this with your suggestions UI)
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Search suggestion $index'),
                );
              },
            ),
          ),
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
      )

    );
  }
}