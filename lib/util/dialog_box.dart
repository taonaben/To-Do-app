import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/my_btn.dart';

class DialogBox extends StatelessWidget{
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;


  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
       backgroundColor: Colors.yellow[300],
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(10),
       ),
       title: Text("Add task"),
      content: Container(
        height: 120,
        child: Column(
          children: [
            //get user input
            TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Add a new task",)
            ),
            //Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save btn
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(width: 8),
                //cancel btn
                MyButton(text: "Cancel", onPressed: onCancel),

              ],
            ),
          ],
        ),
      ),
    );
  }
}