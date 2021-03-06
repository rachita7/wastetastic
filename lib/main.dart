import 'package:flutter/material.dart';
import 'package:wastetastic/screens/BasicTestingScreen.dart';
import 'package:wastetastic/screens/CarParkScreen.dart';
import 'package:wastetastic/screens/MainScreen.dart';
import 'package:wastetastic/screens/NearYouScreen.dart';
import 'package:wastetastic/screens/POIDetailsScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: MainScreen.id,
      routes: {
        BasicTestingScreen.id: (context) => BasicTestingScreen(),
        MainScreen.id: (context) => MainScreen(),
        POI_DetialScreen.id: (context) => POI_DetialScreen(),
        NearYouScreen.id: (context) => NearYouScreen(),
        CarParkScreen.id: (context) => CarParkScreen(),
      },
    );
  }
}
