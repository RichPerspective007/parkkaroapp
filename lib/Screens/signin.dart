import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parkeaseapp/Screens/register.dart';
import 'package:parkeaseapp/Screens/verification_screen.dart';
import 'package:parkeaseapp/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:parkeaseapp/firebase_options.dart';

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
    return Scaffold(
      extendBodyBehindAppBar: true,
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
                    'Login',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
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
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          color: context.isDarkMode?Color(0xFF353535): Colors.white,
          child: Column(
              children: [
                SizedBox(height: 85,),
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
                      decoration: const InputDecoration(
                        hintText: 'Enter registered email.',
                        hintStyle: TextStyle(fontSize: 15.0,),
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
                      decoration: const InputDecoration(
                        hintText: 'Enter password.',
                        hintStyle: TextStyle(fontSize: 15.0,),
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
                      }
                    }
                  }, 
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFFFFA41B))),
                  child: const Text('Submit'),),
                  const Text('Don\'t have an account with us?'),
                  ElevatedButton(onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const RegisterView()),);
                    },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFFFFA41B))),
                    child: const Text('Register!'))
              ],
            ),
        ),
      )
    );
  }
}