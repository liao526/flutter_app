import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerWidget();
  }
}

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(alignment:Alignment.topCenter,
            //repeat: ImageRepeat.repeat,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.grey[400].withOpacity(0.5), BlendMode.hardLight),
            image: NetworkImage("https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec="
            "1556204665&di=11f48eed3697204386a454c0dc9aa504&src=http://b-ssl.duitang.com/uploads/item/201506/04/20150604200338_mtRSM.jpeg")),
      ),
      //    alignment: Alignment.center,
//      color: Colors.grey,
      //    child: Icon(Icons.poll,size: 32,color: Colors.brown,),

//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          Icon(Icons.poll,size: 32,color: Colors.brown,),
//        ],
//      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            child: Icon(
              Icons.poll,
              size: 30,
              color: Colors.brown,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                //形状
                color: Colors.lightBlue,
                border:
                    Border.all(color: Colors.yellow, style: BorderStyle.solid),
//            borderRadius: BorderRadius.circular(10),//圆角
//            borderRadius: BorderRadius.only(topLeft:Radius.circular(2)
//            ,topRight:Radius.circular(2),bottomRight:
//                Radius.circular(2),bottomLeft:
//                Radius.circular(2) )
                boxShadow: [
                  BoxShadow(
                      offset: Offset(6, 6),
                      color: Colors.brown,
                      //模糊
                      blurRadius: 2,
                      spreadRadius: -2)
                ],
                //梯度渐变
//            gradient: RadialGradient(colors: [
//              Color.fromRGBO(7, 233, 233, 1),
//              Color.fromRGBO(3, 23, 233, 1)
//            ])
//线性渐变
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(7, 233, 233, 1),
                  Color.fromRGBO(3, 23, 233, 1)
                ],
                begin: Alignment.topLeft)),
          )
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  String _title = "问题";
  TextStyle _textStyle =
      TextStyle(color: Colors.black, fontStyle: FontStyle.normal, fontSize: 17);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$_title ：\n最近在用线程池写代码跑任务时抛了这个java.util.concurrent.RejectedExecutionException异常，"
      "于是就查 了下自己的代码，原因是线程池调用shutdown（）后，又执行了新任务。在shutdown()执行前，老的任务会继续处理而不允许在提交新的任务。",
      textAlign: TextAlign.left,
      style: _textStyle,
      textScaleFactor: 0.6,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class RichTextWidget extends StatelessWidget {
  TextStyle _textStyle =
      TextStyle(color: Colors.black, fontStyle: FontStyle.normal, fontSize: 17);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "你好吗",
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 30,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
          children: [TextSpan(text: "我很好", style: _textStyle)]),
    );
  }
}
