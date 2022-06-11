import 'package:flutter/material.dart';

class NotificationCenter extends StatefulWidget {
  const NotificationCenter({Key? key}) : super(key: key);

  @override
  State<NotificationCenter> createState() => _NotificationCenterState();
}

class _NotificationCenterState extends State<NotificationCenter> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Notification Center"),
      ),
      body: Container(
        height: _height,
        width: _width,
        child: ListView(
          children: const [
            Card(
              child: ListTile(
                title: Text("12/6/2022 06:20:01"),
                subtitle: Text("moisture level : 100"),
              ),
            ),
             Card(
              child: ListTile(
                title: Text("11/6/2022 06:20:01"),
                subtitle: Text("moisture level : 120"),
              ),
            ),
             Card(
              child: ListTile(
                title: Text("10/6/2022 06:20:01"),
                subtitle: Text("moisture level : 220"),
              ),
            ),
             Card(
              child: ListTile(
                title: Text("10/6/2022 06:20:01"),
                subtitle: Text("moisture level : 220"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("10/6/2022 06:20:01"),
                subtitle: Text("moisture level : 220"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("10/6/2022 06:20:01"),
                subtitle: Text("moisture level : 220"),
              ),
            ),
             Card(
              child: ListTile(
                title: Text("10/6/2022 06:20:01"),
                subtitle: Text("moisture level : 220"),
              ),
            ),
             Card(
              child: ListTile(
                title: Text("10/6/2022 06:20:01"),
                subtitle: Text("moisture level : 220"),
              ),
            ),
             Card(
              child: ListTile(
                title: Text("10/6/2022 06:20:01"),
                subtitle: Text("moisture level : 220"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
