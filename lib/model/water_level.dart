import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class WaterLevel extends StatefulWidget {
  const WaterLevel({ Key? key }) : super(key: key);

  @override
  State<WaterLevel> createState() => _WaterLevelState();
}

class _WaterLevelState extends State<WaterLevel> {
  String _waterLevel = "Loading";
  final _database = FirebaseDatabase.instance.ref();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _activeListener();
  }

  void _activeListener() {
    _database.child("/irrigation/water_level").onValue.listen((event) {
      final String water = event.snapshot.value.toString();
      setState(() {
        _waterLevel = water;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height * 0.15,
      width: _width,
      child: Card(
          child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            width: _width * 0.44,
            color: Colors.green,
            child: Column(
              children: [
                Icon(
                  Icons.water,
                  size: 50,
                ),
                Text(
                  "Water \n Level",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
          _waterLevel == "Loading"?Padding(
            padding: EdgeInsets.only(left:_width*0.22),
            child: CircularProgressIndicator(color: Colors.green,),
          ) :
          Container(
            margin: EdgeInsets.all(8),
            width: _width * 0.44,
            child: Text(_waterLevel,style: TextStyle(fontSize: 40),)
          ),
        ],
      )),
    );
  }
}

