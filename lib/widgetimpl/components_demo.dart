import 'package:flutter/material.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaterialComponets"),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItemWidget(title: "FloatingBottom", page: FloatingBottomDemo()),
          ListItemWidget(title: "BottomDemo1", page: BottomDemo1()),
        ],
      ),
    );
  }
}

class BottomDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _rom = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: (){
            debugPrint("flatButton on clikc");
          },
          child: Text("Button",style: TextStyle(color: Theme.of(context).accentColor),),
          splashColor: Colors.yellow,
        ),
        FlatButton.icon(onPressed: () {
          debugPrint("FlatButton.icon on clikc");
        },
            icon: Icon(Icons.radio_button_checked),
            label: Text("Button"),
        splashColor: Colors.grey,textColor: Theme.of(context).accentColor,)

      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("BottomDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _rom
          ],
        ),
      ),
    );
  }
}

class BottomDemo2 extends StatelessWidget {
  final _rom = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[_rom],
        ),
      ),
    );
  }
}

class FloatingBottomDemo extends StatelessWidget {
  final _floatingActionBottom = FloatingActionButton(
    onPressed: null,
    mini: true,
    child: Icon(
      Icons.add,
    ),
    elevation: 0,
    backgroundColor: Colors.yellow,
//    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(30)),
    shape: CircleBorder(),
  );

  final _floatingActionBottomExtended = FloatingActionButton.extended(
    onPressed: null,
    label: Text("add"),
    icon: Icon(Icons.add),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButtom"),
      ),
      floatingActionButton: _floatingActionBottom,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class ListItemWidget extends StatelessWidget {
  final String title;
  final Widget page;

  ListItemWidget({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
