import 'package:flutter/material.dart';
import 'package:parkeaseapp/Screens/home_page_2.dart';
import 'package:parkeaseapp/Screens/login_screen.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/SplashScreen.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 230,
                height: 50,
                margin: EdgeInsets.only(bottom:50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );
              
                  },
                  style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0), // Customize the border radius
                                    ),
                                  ),
                                  backgroundColor: MaterialStateProperty.all<Color>(
                                    Colors.lightBlue, // Customize the background color
                                  ),
                                  foregroundColor: MaterialStateProperty.all<Color>(
                                    Colors.white, // Customize the text color
                                  ),
                                  textStyle: MaterialStateProperty.all<TextStyle>(
                                    TextStyle(
                                      fontSize: 16.0, // Customize the text size
                                    ),
                                  ),
                                ),
                  child: const Text("Get Started",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}