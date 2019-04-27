import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewPageWidget2();
  }
}

class ViewPageWidget2 extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            employeesList[index].photo,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(bottom: 10,left: 10,
            child:Text(employeesList[index].nme),),
        Positioned(bottom: 10,left: 60,
            child:  Text(employeesList[index].gender,textAlign: TextAlign.left,),)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: _pageItemBuilder,
      itemCount: employeesList.length,
    );
  }
}

class ViewPageWidget extends StatelessWidget {
  Widget buildPage(String content) {
    return Container(
      color: Colors.grey,
      alignment: AlignmentDirectional.center,
      child: Text(
        content,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: (pageIndex) => debugPrint("pageIndex = $pageIndex"),
      controller: PageController(initialPage: 1, viewportFraction: 0.8),
      children: <Widget>[
        buildPage("one"),
        buildPage("two"),
        buildPage("three"),
      ],
    );
  }
}
