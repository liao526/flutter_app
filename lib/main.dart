import 'package:flutter/material.dart';
import 'package:flutter_app/widgetimpl/home_widget.dart';
import 'package:flutter_app/widgetimpl/routes_demo.dart';
import 'package:flutter_app/widgetimpl/froms_demo.dart';


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
      //home: NavigationDemo(),
      initialRoute:"/from",
      routes: {
        "/":(context)=>HomeWidget(),
        "/about":(context)=> Page("About"),
        "/from":(context)=> FromView(),

      },
      theme: ThemeData(
        accentColor: Colors.deepOrange,
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.black),
    );
  }
}
