import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/clickable_container.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/main.dart';
class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    double scrHeight = Constants.screenHeight(context);
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar:true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80), // Specify the desired height
          child: Container(
            margin: EdgeInsets.all(8), // Add margins
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), // Add border radius
              color: Color(0xFFFFA41B),
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
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Container(
            padding: EdgeInsets.all(15),
            color: context.isDarkMode?Color(0xFF353535):Colors.white,
            child: Column(
              children: [
                const SizedBox(height: 75,),
                CustomizedClickableContainer.icon(
                  text: 'Languages',
                  customIconData: Icons.language,
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
                  text: 'Rules and Terms',
                  customIconData: Icons.rule,
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
                        MaterialPageRoute(builder: (context) => ThemeSelection()),
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
                SizedBox(
                  height: 12,
                ),
              ],),
          ),
        )
        ),
    );
  }
}