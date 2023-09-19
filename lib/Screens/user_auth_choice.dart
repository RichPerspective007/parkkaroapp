import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/Screens/register.dart';
import 'package:parkeaseapp/Screens/signin.dart';

class UserAuthChoice extends StatelessWidget {
  const UserAuthChoice({super.key});

  @override
  Widget build(BuildContext context) {
    double scrWidth = Constants.screenWidth(context);
    double scrHeight = Constants.screenHeight(context);
    print(scrHeight);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login.png'),
            fit: BoxFit.cover,
            ),
        ),
        child: Container(
          height: scrHeight/2.2,
          width: scrWidth-20,
          margin:EdgeInsets.fromLTRB(9, 0.625*scrHeight, 9, 38),
          decoration: BoxDecoration(gradient: LinearGradient(
            begin:Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFF671F),
              Color(0xFF14B265)
            ]
          ),
          borderRadius: BorderRadius.circular(30)),
          child: Column(children: [
            Hero(
              tag:'AppLogo',
              child: Image.asset('assets/images/fin_logo.png',height: 100,width: 330,)),
            Text('Welcome to Park.Karo.\nGet Started by creating a new account or log in.',style: TextStyle(color:Colors.white,fontFamily: 'Inter',fontWeight: FontWeight.w400)),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterView()),
                  );
              }, 
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: Text('Register',style: TextStyle(color: Colors.black),)),
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginView()),
                  );
              }, 
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: Text('Sign In',style: TextStyle(color: Colors.black),)),
            ],)
          ],)
        )
      )
    );
  }
}