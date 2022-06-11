import 'package:flutter/material.dart';
import 'package:irrigation_system/model/button.dart';
import 'package:irrigation_system/model/moister.dart';
import 'package:irrigation_system/model/water_level.dart';
import 'package:irrigation_system/screens/notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Color(0xff90EE90),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("IRRIGATION SYSTEM"),
        backgroundColor: Colors.green,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationCenter()));
                print("Thanks For Notify Me.");
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
          height: _height,
          width: _width,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  height: _height * 0.33,
                  child: Image(
                    image: AssetImage("assets/images/irrigation.jpg"),
                    fit: BoxFit.cover,
                  )),
              Positioned(
                  top: _height * 0.37,
                  left: 0,
                  right: 0,
                  height: _height * 0.18,
                  child: const Moisture()),
              Positioned(
                  top: _height * 0.56,
                  left: 0,
                  right: 0,
                  height: _height * 0.18,
                  child: const WaterLevel()),
              Positioned(
                  top: _height * 0.75,
                  left: 0,
                  right: 0,
                  height: _height * 0.13,
                  child: const PowerButton())
            ],
          )),
    );
  }
}
