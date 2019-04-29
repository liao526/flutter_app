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
        ],
      ),
    );
  }
}

class FloatingBottomDemo extends StatelessWidget {
  final _floatingActionBottom = FloatingActionButton(
    onPressed: null,
    mini: true,
    child: Icon(Icons.add,),
    elevation: 0,
    backgroundColor: Colors.yellow,
//    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(30)),
    shape:CircleBorder(),
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
