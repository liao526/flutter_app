import 'package:flutter/material.dart';
import 'package:flutter_app/widgetimpl/drawer_widget.dart';
import 'package:flutter_app/widgetimpl/navigation_bar_widget.dart';
import 'package:flutter_app/widgetimpl/listView_widget.dart';
void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialWidget();
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            //leading: IconButton(icon: Icon(Icons.menu), onPressed: ()=>debugPrint("mune on click")),
            centerTitle: true,
            title: Text("Flutter App",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => debugPrint("mune on search")),
            ],
            elevation: 0,
            bottom: TabBar(
                unselectedLabelColor: Colors.black45,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1,
                tabs: [

                  Tab(
                    icon: Icon(Icons.laptop_chromebook),
                  ),
                  Tab(
                    icon: Icon(Icons.lightbulb_outline),
                  ),
                  Tab(
                    icon: Icon(Icons.live_help),
                  )
                ]),
          ),
          body: TabBarView(children: [
            ListWidget(),
//            Tab(
//              icon: Icon(
//                Icons.laptop_chromebook,
//                size: 100,
//                color: Colors.black12,
//              ),
//            ),
            Tab(
              icon: Icon(Icons.lightbulb_outline,
                  size: 100, color: Colors.black12),
            ),
            Tab(
              icon: Icon(Icons.live_help, size: 100, color: Colors.black12),
            )
          ]),
          drawer: LeftDrawerWidget(),
          bottomNavigationBar: BottomNavigationBarWidget(),
        ));
  }
}

class MaterialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeWidget(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}
