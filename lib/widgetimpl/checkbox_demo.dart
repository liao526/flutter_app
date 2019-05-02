import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
        return CheckboxDemoState();
    }
}

class CheckboxDemoState extends State<CheckboxDemo> {
  bool _checkBoxValueA = true;

     @override
     Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
                title: Text("CheckBoxDemo"),
            ),
            body:Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CheckboxListTile(value: _checkBoxValueA, onChanged: (value){
                    setState(() {
                      _checkBoxValueA = value;
                    });
                  },title: Text("Checkbox A"),
                  subtitle: Text("Description"),secondary: Icon(Icons.bookmark),selected: _checkBoxValueA,),
                  Row(
                    children: <Widget>[
//                      Checkbox(value: _checkBoxValueA, onChanged: (value) {
//                          setState(() {
//                            _checkBoxValueA = value;
//                          });
//                      },activeColor: Colors.black,)
                    ],
                  )
                ],
              ),
            )
          );
     }
 }