import 'package:flutter/material.dart';

class LeftDrawerWidget extends StatelessWidget {
  ListTile buildListTitle(BuildContext context, String content, IconData icon) {
    return ListTile(
      title: Text(
        content,
        textAlign: TextAlign.right,
      ),
      trailing: Icon(icon, color: Colors.black12, size: 22),
      onTap: () => Navigator.pop(context),
    );
  }

  List<Widget> buildListChild(BuildContext context) {
    return <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text(
          "廖永强",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        accountEmail: Text(
          "231034619@qq.com",
          style: TextStyle(color: Colors.white),
        ),
        currentAccountPicture: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3018968254,2801372361&fm=26&gp=0.jpg"),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec="
                  "1556204665&di=11f48eed3697204386a454c0dc9aa504&src=http://b-ssl.duitang.com/uploads/item/201506/04/20150604200338_mtRSM.jpeg"),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Colors.grey[400], BlendMode.colorBurn)),
        ),
      ),
      buildListTitle(context, "Message", Icons.message),
      buildListTitle(context, "Favorite", Icons.favorite),
      buildListTitle(context, "Setting", Icons.settings)
    ];
  } //

  @override
  Widget build(BuildContext context) {
    ListView listView = new ListView(
      padding: EdgeInsets.all(0),
      children: buildListChild(context),
    );

    return Drawer(
      child: listView,
    );
  }
}
