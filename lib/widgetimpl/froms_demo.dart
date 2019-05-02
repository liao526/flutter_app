import 'package:flutter/material.dart';

class FromView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FromDemo"),
        elevation: 0,
      ),
      body: Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.black),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RegisterFromWidget(),
              ],
            ),
          )),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}

class TextFieldState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FromTextState();
  }
}

class FromTextState extends State<TextFieldState> {
  final controller = TextEditingController();

  @override
  void dispose() {
    debugPrint("FromText on dispose");
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    debugPrint("FromText initState");
    controller.addListener(() {
      debugPrint("input : ${controller.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
//      onChanged: (value){
//        debugPrint("input : $value");
//      },
      onSubmitted: (value) {
        debugPrint("submit : $value");
      },

      decoration: InputDecoration(
          icon: Icon(Icons.subject),
          labelText: "title",
          hintText: "Enter the post title",
          border: InputBorder.none,
          //border: OutlineInputBorder(),
          filled: true),
    );
  }
}

class RegisterFromWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterFromState();
  }
}

class RegisterFromState extends State<RegisterFromWidget> {
  final registerFromKey = GlobalKey<FormState>();
  String userName, password;

  String validatorName(value) {
    return value.isEmpty ? "userName is required" : null;
  }

  String validatorPassword(value) {
    return value.isEmpty ? "userName is required" : null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: registerFromKey,
        child: Column(
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(
            labelText: "username",
          ),
          onSaved: (value) {
            userName = value;
          },
          validator: validatorName,
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: "password",
          ),
          onSaved: (value) {
            password = value;
          },
          validator: validatorPassword,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text(
                "regisster",
                style: TextStyle(color: Colors.white),
              ),
              elevation: 0,
              onPressed: () {
//                debugPrint("222222222222222222");
                registerFromKey.currentState.save();
                registerFromKey.currentState.validate();
                debugPrint("userNmae：$userName");
                debugPrint("password：$password");
              }),
        )
      ],
    ));
  }
}
