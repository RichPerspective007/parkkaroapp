import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/Screens/register.dart';
import 'package:parkeaseapp/Screens/verification_screen.dart';
import 'package:parkeaseapp/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:parkeaseapp/firebase_options.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double scrHeight = Constants.screenHeight(context);
    double scrWidth = Constants.screenWidth(context);
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80), // Specify the desired height
          child: Container(
            margin: EdgeInsets.all(8), // Add margins
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), // Add border radius
              gradient: const LinearGradient(
                colors:[
                Color(0xFFFFA41B),
                Color(0xFF14B265)
              ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back,color:Color(0xFF1019E9),),
                      iconSize: 40,
                      onPressed: () {
                        Navigator.pop(context);// Add your menu button functionality here
                      },
                    ),
                    const Text(
                      'Login',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color(0xFF1019E9)),
                    ),
                    SizedBox(
                      width: 40,
                    )
                    ]),
                
                ],
              
            ),
          ),
          ),
        body: SingleChildScrollView(
          child: Container(
            height: scrHeight,
            width: scrWidth,
            color: context.isDarkMode?Color(0xFF353535): Colors.white,
            child: Column(
                children: [
                  SizedBox(height: 85,),
                  Hero(
                    tag: 'heroLogo',
                    child: Image(image: AssetImage('assets/images/main_app_logo.png'),alignment: Alignment.center,height:50,width:150)),
                  Container(
                      margin:EdgeInsets.all(10),
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color:context.isDarkMode?Color(0xFF353535): Colors.white,
                        border: Border.all(color:context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black,style: BorderStyle.solid, width:2.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        style: TextStyle(color: context.isDarkMode?Colors.white54:Colors.black),
                        controller: _email,
                        enableSuggestions: false,
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Enter registered email.',
                          hintStyle: TextStyle(fontSize: 15.0,color: context.isDarkMode?Colors.white:Colors.black),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  Container(
                      margin:EdgeInsets.all(10),
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color:context.isDarkMode?Color(0xFF353535): Colors.white,
                        border: Border.all(color:context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black,style: BorderStyle.solid, width:2.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        style: TextStyle(color: context.isDarkMode?Colors.white54:Colors.black),
                        controller: _password,
                        enableSuggestions: false,
                        autocorrect: false,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter password.',
                          hintStyle: TextStyle(fontSize: 15.0,color: context.isDarkMode?Colors.white:Colors.black),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ElevatedButton(onPressed: () async {
                    await Firebase.initializeApp(
                        options: DefaultFirebaseOptions.currentPlatform,
                      );
                      final email = _email.text;
                      final password = _password.text;
                      try {
                        final userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: email, 
                          password: password
                        );
                        print(userCredential);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PendingVerification()),
                        );
                      }
                      on FirebaseAuthException catch (e){
                        if (e.code == 'INVALID_LOGIN_CREDENTIALS'){
                          print('Invalid email-password combination');
                          Alert(
                            context: context,
                            title: "Invalid email-password combination",
                            desc: "Please check your credentials.",
                            type: AlertType.error,
                            //image: Image.asset('assets/images/alertimg3.jpg'),
                            buttons: [
                              DialogButton(
                                child: Text(
                                  "COOL",
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () => Navigator.pop(context),
                                width: 120,
                              )
                            ],
                          ).show();
                        }
                        else if (e.code == 'invalid-email'){
                          print('The entered email is invalid.');
                          Alert(
                            context: context,
                            title: "INVALID EMAIL",
                            desc: "Please enter a valid email ID.",
                            type: AlertType.error,
                            //image: Image.asset('assets/images/alertimg4.jpg'),
                            buttons: [
                              DialogButton(
                                child: Text(
                                  "COOL",
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () => Navigator.pop(context),
                                width: 120,
                              )
                            ],
                          ).show();
                        }
                      }
                    }, 
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFFFFA41B))),
                    child: const Text('Submit'),),
                    Text('Don\'t have an account with us?',style: TextStyle(color: context.isDarkMode?Colors.white:Colors.black),),
                    ElevatedButton(onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const RegisterView()),);
                      },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFFFFA41B))),
                      child: const Text('Register!'))
                ],
              ),
          ),
        )
      ),
    );
  }
}