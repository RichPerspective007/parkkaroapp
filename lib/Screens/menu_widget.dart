import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/clickable_container.dart';
import 'package:parkeaseapp/Constants/constants.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double scrHeight = Constants.screenHeight(context);
    return Drawer(
      child: Container(
        decoration: BoxDecoration(color:Color.fromARGB(250, 217, 217, 217)),
        height: scrHeight,
        child: Column(
          children: <Widget>[
            Container(
              height:scrHeight/8,
              alignment: Alignment.centerLeft,
              child: DrawerHeader(
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/cover.jpg'))),
              ),
            ),
            CustomizedClickableContainer.icon(
                      text: 'Account',
                      customIconData: Icons.account_circle_rounded,
                      onTap: () {
                        // Action for tapping container
                      },
                      customContainerColor: Colors.white24,    // Custom container color
                      customContainerHeight: scrHeight/(800/60),
                      customContainerWidth: 250,
                      customAlign: MainAxisAlignment.start,
                      customBorder: Border.all(color: Colors.transparent, width: 2.0),        // Custom container height
                    ),
            SizedBox(height:15),
            CustomizedClickableContainer.icon(
                      text: 'Wallet',
                      customIconData: Icons.wallet_rounded,
                      onTap: () {
                        // Action for tapping container
                      },
                      customContainerColor: Colors.white24,    // Custom container color
                      customContainerHeight: scrHeight/(800/60),
                      customContainerWidth: 250,
                      customAlign: MainAxisAlignment.start,
                      customBorder: Border.all(color: Colors.transparent, width: 2.0),        // Custom container height
                    ),
            SizedBox(height:15),
            CustomizedClickableContainer.icon(
                      text: 'Settings',
                      customIconData: Icons.settings,
                      onTap: () {
                        // Action for tapping container
                      },
                      customContainerColor: Colors.white24,    // Custom container color
                      customContainerHeight: scrHeight/(800/60),
                      customContainerWidth: 250,
                      customAlign: MainAxisAlignment.start,
                      customBorder: Border.all(color: Colors.transparent, width: 2.0),        // Custom container height
                    ),
            SizedBox(height:15),
            CustomizedClickableContainer.icon(
                      text: 'Help',
                      customIconData: Icons.help_rounded,
                      onTap: () {
                        // Action for tapping container
                      },
                      customContainerColor: Colors.white24,    // Custom container color
                      customContainerHeight: scrHeight/(800/60),
                      customContainerWidth: 250,
                      customAlign: MainAxisAlignment.start,
                      customBorder: Border.all(color: Colors.transparent, width: 2.0),        // Custom container height
                    ),
            SizedBox(height:150),
            CustomizedClickableContainer.icon(
                      text: 'Logout',
                      customIconData: Icons.logout,
                      onTap: () {
                        // Action for tapping container
                      },
                      customContainerColor: Colors.white24,    // Custom container color
                      customContainerHeight: scrHeight/(800/60),
                      customContainerWidth: 250,
                      customAlign: MainAxisAlignment.start,
                      customBorder: Border.all(color: Colors.transparent, width: 2.0),        // Custom container height
                    ),
            SizedBox(height:20),
            Container(
                      width: 238,
                      height: 100,
                      decoration: ShapeDecoration(
                          color:const Color(0xFF3392EA),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                          ),
                      ),
                      child: Container(
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('112',style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white)),
                            Text('Emergency Number',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.white)),
                          ],
                        ),
                      )
                  )
          ],
        ),
      ),
    );
  }
}

