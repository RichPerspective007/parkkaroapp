import 'package:flutter/material.dart';
import 'Screens/get_started.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/services.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Request location permission on first startup
  PermissionStatus status = await Permission.location.request();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
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
extension DarkMode on BuildContext {
  /// is dark mode currently enabled?
  bool get isDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    final themeval = brightness == Brightness.dark;
    return themeval;
  }
  set isDarkMode(bool value) {
    final Brightness newBrightness = value ? Brightness.dark : Brightness.light;
    final Brightness currentBrightness = MediaQuery.of(this).platformBrightness;
    if (newBrightness != currentBrightness) {
      // Change the theme based on the new brightness
      // You can implement your theme changing logic here
      // For example, you can use Provider or InheritedWidget to manage the app's theme.
    }
  }
}