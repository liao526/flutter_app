import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
        return CheckboxDemoState();
    }
}


class CheckboxDemoState extends State<CheckboxDemo> {
  bool _checkBoxValueA = true;
  bool _checkBoxValueB = true;

     @override
     Widget build(BuildContext context) {
       final _checkbox = Checkbox(value: _checkBoxValueA, onChanged: (value1) {
         setState(() {
           this._checkBoxValueA = value1;
         });
       }, activeColor: Colors.black,);

       final _checkboxTitle = CheckboxListTile(value: _checkBoxValueB, onChanged: (value2){
         setState(() {
           this._checkBoxValueB = value2;
         });
       },title: Text("Checkbox A"),
         subtitle: Text("Description"),secondary: Icon(Icons.bookmark),selected: _checkBoxValueB,);
          return Scaffold(
            appBar: AppBar(
                title: Text("CheckBoxDemo"),
            ),
            body:Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _checkboxTitle,
                  Row(
                    children: <Widget>[
                      _checkbox
                    ],
                  )
                ],
              ),
            )
          );
     }
 }