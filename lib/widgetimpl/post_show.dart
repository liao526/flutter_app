import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {
  final Employees employees;

  PostShow({
    @required this.employees
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("${employees.nme}"),
      ),
      body: Column(
        children: <Widget>[
          Image.network(employees.photo),
          Container(
            color: Colors.grey[300],
            padding: EdgeInsets.all(32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("${employees.nme}",style: Theme.of(context).textTheme.title,),
                Text("${employees.gender}",style: Theme.of(context).textTheme.title,),
                SizedBox(height: 20,),
                Text("${employees.describe}",style: Theme.of(context).textTheme.body1,)
              ],
            ),
          )
        ],
      ),
    );

  }

}