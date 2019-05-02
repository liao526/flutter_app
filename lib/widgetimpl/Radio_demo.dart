import 'package:flutter/material.dart';

class RadioWidgetDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RadioWidgetDemoState();
  }
}

class RadioWidgetDemoState extends State<RadioWidgetDemo> {
  int _radioGroupA = 0;

  _handlerRadioChanged(int value) {
    setState(() {
      _radioGroupA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioWidgetDemo"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("value: $_radioGroupA"),
            SizedBox(height: 10,),
            RadioListTile(value: 0, groupValue: _radioGroupA,
                onChanged: _handlerRadioChanged,
            title: Text("Options A"),
            subtitle: Text("Description"),
            secondary: Icon(Icons.filter_1),
            selected: _radioGroupA==0,),
            RadioListTile(value: 1, groupValue: _radioGroupA,
              onChanged: _handlerRadioChanged,
              title: Text("Options B"),
              subtitle: Text("Description"),
              secondary: Icon(Icons.filter_2),
              selected: _radioGroupA==1,),
//            Radio(
//                value: 0,
//                groupValue: _radioGroupA,
//                onChanged: _handlerRadioChanged,activeColor: Colors.black,),
//            Radio(
//              value: 1,
//              groupValue: _radioGroupA,
//              onChanged: _handlerRadioChanged,activeColor: Colors.black,)
          ],
        ),
      ),
    );
  }
}
