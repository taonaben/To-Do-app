import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  TextEditingController myController = TextEditingController();

  //greeting message variable
  String greetingMessage="";

  void greetUser(){
    setState(() {
      greetingMessage="Hello " + myController.text;
    });
  }



  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.8),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(greetingMessage),

                TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    hintText: "Name",
                  ),
                ),

                // button
                ElevatedButton(
                    onPressed: greetUser,
                    child: Text("tap"))
              ]
          ),
        ),
      ),
    );
  }
}

