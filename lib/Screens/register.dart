import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parkeaseapp/Screens/login_screen.dart';
import 'package:parkeaseapp/main.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _name;
  late final TextEditingController _aadhar;
  late final TextEditingController _dob;
  late final TextEditingController _model;
  late final TextEditingController _numId;
  late final TextEditingController _license;
  @override
  void initState() {
    _name = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    _aadhar = TextEditingController();
    _dob = TextEditingController();
    _model = TextEditingController();
    _numId = TextEditingController();
    _license = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _aadhar.dispose();
    _license.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
                    'Register',
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
        child: Container(
          color: context.isDarkMode?Color(0xFF353535): Colors.white,
          child: Column(
              children: [
                SizedBox(height: 85,),
                Container(
                    margin:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color:context.isDarkMode?Color(0xFF353535): Colors.white,
                      border: Border.all(color:context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black,style: BorderStyle.solid, width:2.0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      controller: _name,
                      enableSuggestions: false,
                      autocorrect: false,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        hintText: '   Enter your name',
                      ),
                    ),
                  ),
                Container(
                    margin:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color:context.isDarkMode?Color(0xFF353535): Colors.white,
                      border: Border.all(color:context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black,style: BorderStyle.solid, width:2.0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      controller: _email,
                      enableSuggestions: false,
                      autocorrect: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: '   Enter your email.',
                      ),
                    ),
                  ),
                Container(
                    margin:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color:context.isDarkMode?Color(0xFF353535): Colors.white,
                      border: Border.all(color:context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black,style: BorderStyle.solid, width:2.0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      controller: _password,
                      enableSuggestions: false,
                      autocorrect: false,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: '   Set a password.',
                      ),
                    ),
                  ),
                Container(
                    margin:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color:context.isDarkMode?Color(0xFF353535): Colors.white,
                      border: Border.all(color:context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black,style: BorderStyle.solid, width:2.0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(12),],
                      controller: _aadhar,
                      enableSuggestions: false,
                      autocorrect: false,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: '   Enter your Aadhar number.',
                      ),
                    ),
                  ),
                Container(
                    margin:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color:context.isDarkMode?Color(0xFF353535): Colors.white,
                      border: Border.all(color:context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black,style: BorderStyle.solid, width:2.0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      controller: _dob,
                      enableSuggestions: false,
                      autocorrect: false,
                      keyboardType: TextInputType.datetime,
                      decoration: const InputDecoration(
                        hintText: '   Enter your date of birth.',
                      ),
                    ),
                  ),
                Container(
                    margin:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color:context.isDarkMode?Color(0xFF353535): Colors.white,
                      border: Border.all(color:context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black,style: BorderStyle.solid, width:2.0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      controller: _model,
                      enableSuggestions: false,
                      autocorrect: false,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        hintText: '   Your Car model.',
                      ),
                    ),
                  ),
                Container(
                    margin:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color:context.isDarkMode?Color(0xFF353535): Colors.white,
                      border: Border.all(color:context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black,style: BorderStyle.solid, width:2.0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      controller: _numId,
                      enableSuggestions: false,
                      autocorrect: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: '   Your Car number ID.',
                      ),
                    ),
                  ),
                Container(
                    margin:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color:context.isDarkMode?Color(0xFF353535): Colors.white,
                      border: Border.all(color:context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black,style: BorderStyle.solid, width:2.0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      controller: _license,
                      enableSuggestions: false,
                      autocorrect: false,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: '   Your license number.',
                      ),
                    ),
                  ),
                
                ElevatedButton(onPressed: () /*async*/ {
                    /*final email = _email.text;
                    final password = _password.text;
                    try {
                      final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: email, 
                        password: password
                      );
                      print(userCredential);
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
                    }*/
                  }, child: const Text('Submit'),),
                  const Text('Already registered?'),
                  ElevatedButton(onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginScreen()),);
                    },child: const Text('Login!'))
              ],
            ),
        ),
      )
    );
  }
}