import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuildWidget();
  }
}

class GridViewBuildWidget extends StatelessWidget {

  Widget _buildItem(BuildContext context , int count) {
      return Container(
        color: Colors.grey,
        alignment: AlignmentDirectional.center,
        child: Text("item $count",style: TextStyle(color: Colors.black),),
      );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5),
        itemBuilder: _buildItem);
  }
}

class GridViewExtentWidget extends StatelessWidget {
  List<Widget> _buildItem(int count) {
    return List.generate(count, (index) {
      return Container(
        color: Colors.grey,
        alignment: AlignmentDirectional.center,
        child: Text("item $index",style: TextStyle(color: Colors.black),),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 100,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      //scrollDirection: Axis.horizontal,
      children: _buildItem(40),
    );
  }
}


class GridViewCountWidget extends StatelessWidget {
  List<Widget> _buildItem(int count) {
    return List.generate(count, (index) {
      return Container(
        color: Colors.grey,
        alignment: AlignmentDirectional.center,
        child: Text("item $index",style: TextStyle(color: Colors.black),),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: _buildItem(40),
    );
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
        Positioned(
          bottom: 10,
          left: 10,
          child: Text(employeesList[index].nme),
        ),
        Positioned(
          bottom: 10,
          left: 60,
          child: Text(
            employeesList[index].gender,
            textAlign: TextAlign.left,
          ),
        )
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
