import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/Screens/verified_screen.dart';
import 'dart:async';

import 'package:parkeaseapp/main.dart';

class PendingVerification extends StatefulWidget {
  const PendingVerification({super.key});

  @override
  State<PendingVerification> createState() => _PendingVerificationState();
}

class _PendingVerificationState extends State<PendingVerification> {
  int _otpResendTimer = 30;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      setState(() {
        if (_otpResendTimer > 0) {
          _otpResendTimer--;
        } else {
          _timer?.cancel();
        }
      });
    });
  }

  void _resendOTP() {
    setState(() {
      _otpResendTimer = 30; // Reset the timer to 60 seconds
      _startTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    double scrHeight = Constants.screenHeight(context);
    double scrWidth = Constants.screenWidth(context);
    bool verificationStatus = true;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height:scrHeight,
          color: Color.fromARGB(250, 217, 217, 217),
          child: Column(
            children: [
              Container(
                margin:EdgeInsets.fromLTRB(10, 20, 10, 20),
                width: scrWidth-20,
                height: 400,
                decoration: ShapeDecoration(
                    color: context.isDarkMode?Color(0xFF353535):Color(0xFF3392EA),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                    ),
                ),
                child: Column(children: [
                  Container(
                    width: scrWidth-20,
                    height: 100,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      IconButton(onPressed: () {
                        Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_back_sharp,color: Colors.white,size: 36,)),
                      const Text('Verification',style:TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w400))
                    ],),
                  ),
                  SizedBox(height:62.5),
                  Center(
                    child:Container(
                      child:Column(children: [
                        Container(
                          width: scrWidth-90,
                          height: 75,
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1.5),
                                  borderRadius: BorderRadius.circular(20),
                              ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: scrWidth-100,
                                height: 60,
                                margin: EdgeInsets.all(5),
                                child: TextField(
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  autocorrect: false,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(6),
                                  ],
                                  obscureText: true,
                                  showCursor: true,
                                  decoration: InputDecoration(hintText: 'Enter OTP',hintStyle: TextStyle(fontSize: 24),border: InputBorder.none,),
                                ),
                              ),
                            ],
                          )
                        ),
                        SizedBox(height: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Resend OTP in $_otpResendTimer seconds',
                              style: TextStyle(fontSize: 20,color:Colors.white),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: _otpResendTimer == 0 ? _resendOTP : null,
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0), // Customize the border radius
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.blueGrey, // Customize the background color
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
                              child: Text('Resend OTP'),
                            ),
                          ],
                        ),
                      ],)
                    ),
                  )
                ],),
            ),
            GestureDetector(
              onTap: () {
                if (verificationStatus)
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Verified()));
              },
              child: Container(
                alignment: Alignment.center,
                width: scrWidth-20,
                height: 75,
                decoration: ShapeDecoration(
                    color: context.isDarkMode?Color(0xFF353535):Color(0xFF3392EA),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                    ),
                ),
                child:const Text('Submit',style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            ),),
              ),
            ),
      
            ],
          )
        ),
      )
    );
  }
}