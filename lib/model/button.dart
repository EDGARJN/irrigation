import 'package:flutter/material.dart';

class PowerButton extends StatefulWidget {
  const PowerButton({Key? key}) : super(key: key);

  @override
  State<PowerButton> createState() => _PowerButtonState();
}

class _PowerButtonState extends State<PowerButton> {
  bool ed = true;
  bool _isSwitched = false;
  var textValue = "Switch Is OFF";
  var status = "";
  String edding() {
    if (ed = !ed) {
      status = "ON";
    } else {
      status = "OFF";
    }
    return status;
  }

  void toggleSwitch(bool value) {
    if (_isSwitched == false) {
      setState(() {
        _isSwitched = true;
        textValue = "Switch Is ON";
      });
    } else {
      setState(() {
        _isSwitched = false;
        textValue = "Switch Is OFF";
      });
    }
  }

  // void checkStatus() {

  // }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Container(
      height: _height * 0.15,
      width: _width,
      child: Card(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Container(
            width: _width * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: 1.8,
                  child: Switch(
                      value: _isSwitched,
                      onChanged: toggleSwitch,
                      activeColor: Colors.green,
                      activeTrackColor: Colors.greenAccent,
                      // inactiveTrackColor: Colors.redAccent,
                      // inactiveThumbColor: Colors.red,
                      ),
                ),
                Text(textValue,style: const TextStyle(fontSize: 20),),
              ],
            ),
          )
        ],
      )),
    );
  }
}
