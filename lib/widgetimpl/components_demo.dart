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
    final _outLineButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary, shape: StadiumBorder())),
          child: OutlineButton(
            onPressed: () {},
            child: Text(
              "OutLineButton",
            ),
            splashColor: Colors.grey[100],
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        OutlineButton.icon(
          onPressed: () {},
          icon: Icon(Icons.radio_button_checked),
          label: Text("OutLineButton"),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    final _raisedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3))),
          child: Text(
            "RaisedButton",
            style: TextStyle(color: Theme.of(context).accentColor),
          ),
          splashColor: Colors.yellow,
        ),
        SizedBox(
          width: 10,
        ),
        RaisedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.radio_button_checked),
          label: Text("RaisedButton"),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    final _flatButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            "FlatButton",
            style: TextStyle(color: Theme.of(context).accentColor),
          ),
          splashColor: Colors.yellow,
        ),
        SizedBox(
          width: 10,
        ),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.radio_button_checked),
          label: Text("FlatButton"),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
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
          children: <Widget>[_flatButton, _raisedButton, _outLineButton],
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
