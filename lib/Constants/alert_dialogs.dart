import 'dart:io' show Platform;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


  Widget logoutDialogs(BuildContext context) {
    if (Platform.isAndroid){
    return AlertDialog(
      title: const Text('Logging Out?'),
      content: const Text('Password mat bhulna bsdk'),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: const Text('Cancel')),
        TextButton(onPressed: ()async{
          await FirebaseAuth.instance.signOut();
          Navigator.of(context).pushNamedAndRemoveUntil('/signout', (Route route) => false);
        }, child: const Text('Logout'))
      ],
    );
  }
  else if(Platform.isIOS){
    return CupertinoAlertDialog(
      title: const Text('Logging Out?'),
      content: const Text('Password mat bhulna bsdk'),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: const Text('Cancel')),
        TextButton(onPressed: ()async{
          await FirebaseAuth.instance.signOut();
          Navigator.of(context).pushNamedAndRemoveUntil('/signout', (Route route) => false);
        }, child: const Text('Logout'))
      ],
    );
  }
  return const SizedBox();
  }
