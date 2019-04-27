import 'package:flutter/material.dart';
import '../model/post.dart';
import 'package:flutter_app/widgetimpl/post_show.dart';


class ListWidget extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context,int index) {
    return Container(
      color: Colors.white,
  //    margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child:Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(employeesList[index].photo,fit: BoxFit.cover,),
              ),
              SizedBox(height: 16,),
              Text(
                employeesList[index].nme,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                employeesList[index].gender,
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(height: 16,),
            ],
          ),
          Positioned.fill(child: Material(
            color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.blueGrey.withOpacity(0.3),
                highlightColor: Colors.blueGrey.withOpacity(0.1),
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>PostShow(employees: employeesList[index])),);
                },
              ),
          ))
        ],
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: _listItemBuilder,itemCount: employeesList.length);
  }



}
