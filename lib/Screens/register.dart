import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/Screens/reg_success.dart';
import 'package:parkeaseapp/Screens/signin.dart';
import 'package:parkeaseapp/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:parkeaseapp/firebase_options.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  /*late final TextEditingController _name;
  late final TextEditingController _aadhar;
  late final TextEditingController _dob;
  late final TextEditingController _model;
  late final TextEditingController _numId;
  late final TextEditingController _license;*/
  @override
  void initState() {
    //_name = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    /*_aadhar = TextEditingController();
    _dob = TextEditingController();
    _model = TextEditingController();
    _numId = TextEditingController();
    _license = TextEditingController();*/
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    //_aadhar.dispose();
    //_license.dispose();
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
                colors: [
                Color(0xFFFFA41B),
                Color(0xFF14B265)
              ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
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
                      'Register',
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
                  SizedBox(
                    height: 85,
                  ),
                  Hero(
                    tag:'heroLogo',
                    child: Image(image: AssetImage('assets/images/main_app_logo.png'),alignment: Alignment.center,height:50,width:150)),
                  /*Container(
                      margin:EdgeInsets.all(10),
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color:context.isDarkMode?Color(0xFF353535): Colors.white,
                        border: Border.all(color:context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black,style: BorderStyle.solid, width:2.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white54),
                        controller: _name,
                        enableSuggestions: false,
                        autocorrect: false,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          hintText: 'Enter your name',
                          hintStyle: TextStyle(fontSize: 15.0,),
                          border: InputBorder.none,
                        ),
                      ),
                    ),*/
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
                          hintText: 'Enter your email.',
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
                          hintText: 'Set a password.',
                          hintStyle: TextStyle(fontSize: 15.0,color: context.isDarkMode?Colors.white:Colors.black),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  /*Container(
                      margin:EdgeInsets.all(10),
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color:context.isDarkMode?Color(0xFF353535): Colors.white,
                        border: Border.all(color:context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black,style: BorderStyle.solid, width:2.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white54),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(12),],
                        controller: _aadhar,
                        enableSuggestions: false,
                        autocorrect: false,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: 'Enter your Aadhar number.',
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
                        style: TextStyle(color: Colors.white54),
                        controller: _dob,
                        enableSuggestions: false,
                        autocorrect: false,
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(
                          hintText: 'Enter your date of birth.',
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
                        style: TextStyle(color: Colors.white54),
                        controller: _model,
                        enableSuggestions: false,
                        autocorrect: false,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          hintText: 'Your Car model.',
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
                        style: TextStyle(color: Colors.white54),
                        controller: _numId,
                        enableSuggestions: false,
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: 'Your Car number ID.',
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
                        style: TextStyle(color: Colors.white54),
                        controller: _license,
                        enableSuggestions: false,
                        autocorrect: false,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: 'Your license number.',
                          hintStyle: TextStyle(fontSize: 15.0,),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  */
                  ElevatedButton(onPressed: () async {
                    await Firebase.initializeApp(
                        options: DefaultFirebaseOptions.currentPlatform,
                      );
                      final email = _email.text;
                      final password = _password.text;
                      try {
                        final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: email, 
                          password: password
                        );
                        print(userCredential);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NewUserReg()),
                        );
                      }
                      on FirebaseAuthException catch (e){
                        if (e.code == 'invalid-email'){
                          print('The entered email is invalid.');
                        }
                        else if (e.code == 'weak-password'){
                          print('The password is too weak.\nIt must be atleast 6 characters long.');
                        }
                        else if (e.code == 'email-already-in-use'){
                          print('This email is already in use. Please use a different email or log in to your account.');
                        }
                      }
                    }, 
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFFFFA41B))),
                    child: const Text('Submit'),),
                    Text('Already registered?',style: TextStyle(color: context.isDarkMode?Colors.white:Colors.black),),
                    ElevatedButton(onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginView()),);
                      },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFFFFA41B))),
                      child: const Text('Login!'))
                ],
              ),
          ),
        )
      ),
    );
  }
}