import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return Column(
//      children: <Widget>[
//        IconBadge(Icons.pool,size: 30,),
//        IconBadge(Icons.pool,size: 30,),
//        IconBadge(Icons.pool,size: 30,)
//      ],
//    );

//    return Row(
//      //横轴对齐
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//      //交叉轴对齐
//      crossAxisAlignment: CrossAxisAlignment.center,
//      children: <Widget>[
//        IconBadge(Icons.pool,size: 30,),
//        IconBadge(Icons.pool,size: 40,),
//        IconBadge(Icons.pool,size: 30,)
//      ],
//    );
    return AspectRatioView();
  }
}

class AspectRatioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ConstrainedBox(constraints: BoxConstraints(
          minHeight: 100,maxWidth: 50,
        ),child: Container(
          decoration: BoxDecoration(
            color: Colors.indigoAccent
          ),
        ),),
        AspectRatio(aspectRatio: 16/9,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.deepOrange
            ),
          ),)
      ],
    );
  }
}


class StackView extends StatelessWidget {

  Widget buildSizedBox(IconData data) {
    return Container(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Container(
          decoration: BoxDecoration(color: Colors.deepOrange
          ),
          child: Icon(Icons.person),
        ),
      ),
    );
  }
  final Icon person = Icon(Icons.person);
  final Icon history = Icon(Icons.history);
  final Icon poll = Icon(Icons.poll);
  @override
  Widget build(BuildContext context) {
   return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: <Widget>[
       Container(
         decoration: BoxDecoration(
           color: Colors.deepOrange,
           shape: BoxShape.rectangle,
           borderRadius: BorderRadius.circular(8)
         ),

         child:  SizedBox(
           width: 300,height: 300,
           child: Stack(
             alignment: Alignment.topCenter,
             children: <Widget>[

               Positioned(child: person,left: 0,),
               Positioned(child: history,left: 10,),
               Positioned(child:  poll,right: 0,)
             ],
           ),
         ),
       )
     ],
   );
  }
}


class SizeBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //横轴对齐
        mainAxisAlignment: MainAxisAlignment.center,
        //交叉轴对齐
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 220,
            height: 220,
            child: Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(8)),
              child: Icon(Icons.person),
            ),
          ),

          SizedBox(height: 10,),

          SizedBox(
            width: 50,
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(8)),
              child: IconBadge(Icons.pool),
            ),
          )


        ],


      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
      ),
      width: size + 60,
      height: size + 60,
      color: Colors.indigoAccent,
    );
  }
}
