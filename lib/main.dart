import 'package:flutter/material.dart';
import 'package:parkeaseapp/Screens/verification_screen.dart';
import 'Screens/get_started.dart';
import 'package:permission_handler/permission_handler.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Request location permission on first startup
  PermissionStatus status = await Permission.location.request();
  
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlue, // background (button) color
        foregroundColor: Colors.white, // foreground (text) color
      ),
    ),
      ),
      home: GetStarted(),
    );
  }
}