import 'package:flutter/material.dart';
import 'model/post.dart';

void main() => runApp(MainWidget());


class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialWidget();
  }

}


class ChildWidget extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context,int index) {
    return Container(

      color: Colors.blueGrey,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child:Row(
        children: <Widget>[
          Image.network(employeesList[index].photo,width: 50,height: 50,alignment:Alignment.center),
          SizedBox(width: 10),
          Text(employeesList[index].nme,style: Theme.of(context).textTheme.title,)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: _listItemBuilder,itemCount: employeesList.length);


//    return Center(
//        child: Text("hellow world",
//            style:TextStyle(fontSize:30,fontWeight: FontWeight.normal,color: Colors.black),
//            textDirection: TextDirection.ltr)
//    );
  }

}

class MaterialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(centerTitle: true,title: Text("Flutter App",
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white))),
        body: ChildWidget(),
      ),

      theme: ThemeData(
        primarySwatch: Colors.red
      ),
    );
  }

}






