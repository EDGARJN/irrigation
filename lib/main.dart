import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:irrigation_system/screens/homescreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MySplashScreen(),
    );
  }
}

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(seconds: 3),
        () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()))
            });
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Icon(Icons.water_drop, color: Colors.green,size: 80,)
        ),
      ),
    );
  }
}
