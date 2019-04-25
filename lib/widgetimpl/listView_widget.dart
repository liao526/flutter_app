import 'package:flutter/material.dart';
import '../model/post.dart';


class ListWidget extends StatelessWidget {

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
  }

}
