import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

// class Moisture extends StatelessWidget {
//   Moisture({Key? key}) : super(key: key);
//

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {

//   }
// }

class Moisture extends StatefulWidget {
  const Moisture({Key? key}) : super(key: key);

  @override
  State<Moisture> createState() => _MoistureState();
}

class _MoistureState extends State<Moisture> {
  String _dsplayText = "NoData";
  final _database = FirebaseDatabase.instance.ref();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _activeListener();
  }

  void _activeListener() {
    _database.child("/irrigation/moisture").onValue.listen((event) {
      final String mosture = event.snapshot.value.toString();
      setState(() {
        _dsplayText = mosture;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height * 0.3,
      width: _width,
      child: Card(
          child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            width: _width * 0.44,
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.shower,
                  size: 50,
                ),
                Text(
                  "Moisture \n Level",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
          _dsplayText == "NoData"?Padding(
            padding:  EdgeInsets.only(left:_width*0.22),
            child: CircularProgressIndicator(),
          ) :
          Container(
            margin: EdgeInsets.all(8),
            width: _width * 0.44,
            child: Text(_dsplayText,style: TextStyle(fontSize: 40),)
          ),
        ],
      )),
    );
  }
}
