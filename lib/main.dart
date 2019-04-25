import 'package:flutter/material.dart';
import 'package:flutter_app/widgetimpl/listView_widget.dart';

void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialWidget();
  }
}

class MaterialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar:  AppBar(
            leading: IconButton(icon: Icon(Icons.menu), onPressed: ()=>debugPrint("mune on click")),
            centerTitle: true,title: Text("Flutter App", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: ()=>debugPrint("mune on search")),
          ],
        ),
        body: ListWidget(),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
    ;
  }
}
