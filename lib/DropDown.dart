import 'package:flutter/material.dart';

class DropDownButtonList extends StatefulWidget {
  DropDownButtonList({Key key}) : super(key: key);

  @override
  _DropDownButtonListState createState() => _DropDownButtonListState();
}

class _DropDownButtonListState extends State<DropDownButtonList> {
  String dropdownValue = 'Pendulum';
  var pendulumType = true;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.orange),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Pendulum', 'Circle']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
