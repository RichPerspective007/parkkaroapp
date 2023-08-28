import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/clickable_container.dart';
import 'package:parkeaseapp/Constants/constants.dart';
class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    double scrHeight = Constants.screenHeight(context);
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back,color:Colors.white,),
                    iconSize: 40,
                    onPressed: () {
                      Navigator.pop(context);// Add your menu button functionality here
                    },
                  ),
                  const Text(
                    'Settings',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  IconButton(
                    icon: const Icon(Icons.account_circle_outlined,color: Colors.white,),
                    iconSize: 40,
                    onPressed: () {
                      // Add your search button functionality here
                    },
                  ),]),
              
              ],
            
          ),
        ),
        ),
      
      body: SingleChildScrollView(
        child: Container(
          margin:EdgeInsets.all(15),
          child: Column(
            children: [
              CustomizedClickableContainer.icon(
                text: 'Set Time',
                customIconData: Icons.lock_clock,
                onTap: () {
                   /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );*/// Action for tapping container
                },
                customContainerColor: Colors.white24,    // Custom container color
                customContainerHeight: scrHeight/(800/60),        // Custom container height
              ),
              SizedBox(
                height: 12,
              ),
              CustomizedClickableContainer.icon(
                text: 'Set Location',
                customIconData: Icons.location_city,
                onTap: () {
                   /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );*/// Action for tapping container
                },
                customContainerColor: Colors.white24,    // Custom container color
                customContainerHeight: scrHeight/(800/60),        // Custom container height
              ),
              SizedBox(
                height: 12,
              ),
              CustomizedClickableContainer.icon(
                text: 'Dark Mode',
                customIconData: Icons.curtains_closed,
                onTap: () {
                   /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );*/// Action for tapping container
                },
                customContainerColor: Colors.white24,    // Custom container color
                customContainerHeight: scrHeight/(800/60),        // Custom container height
              ),
              SizedBox(
                height: 12,
              ),
              CustomizedClickableContainer.icon(
                text: 'Admin Mode',
                customIconData: Icons.admin_panel_settings,
                onTap: () {
                   /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );*/// Action for tapping container
                },
                customContainerColor: Colors.white24,    // Custom container color
                customContainerHeight: scrHeight/(800/60),        // Custom container height
              ),
              SizedBox(
                height: 12,
              ),
              CustomizedClickableContainer.icon(
                text: 'Notifications',
                customIconData: Icons.notification_important,
                onTap: () {
                   /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );*/// Action for tapping container
                },
                customContainerColor: Colors.white24,    // Custom container color
                customContainerHeight: scrHeight/(800/60),        // Custom container height
              ),
              SizedBox(
                height: 12,
              ),
              CustomizedClickableContainer.icon(
                text: 'Favorite',
                customIconData: Icons.star,
                onTap: () {
                   /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );*/// Action for tapping container
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
                   /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );*/// Action for tapping container
                },
                customContainerColor: Colors.white24,    // Custom container color
                customContainerHeight: scrHeight/(800/60),        // Custom container height
              ),
              SizedBox(
                height: 12,
              ),
              CustomizedClickableContainer.icon(
                text: 'Account Status',
                customIconData: Icons.account_balance,
                onTap: () {
                   /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );*/// Action for tapping container
                },
                customContainerColor: Colors.white24,    // Custom container color
                customContainerHeight: scrHeight/(800/60),        // Custom container height
              ),
              SizedBox(
                height: 12,
              ),
              CustomizedClickableContainer.icon(
                text: 'About',
                customIconData: Icons.details,
                onTap: () {
                   /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );*/// Action for tapping container
                },
                customContainerColor: Colors.white24,    // Custom container color
                customContainerHeight: scrHeight/(800/60),        // Custom container height
              ),
              SizedBox(
                height: 12,
              ),
              CustomizedClickableContainer.icon(
                text: 'Log Out',
                customIconData: Icons.logout,
                onTap: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );// Action for tapping container
                },
                customContainerColor: Colors.white24,    // Custom container color
                customContainerHeight: scrHeight/(800/60),        // Custom container height
              ),
            ],),
        ),
      )
      );
  }
}