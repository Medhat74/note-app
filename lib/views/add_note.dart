import 'package:flutter/material.dart';
import 'package:notes_app/views/components/custom_text_field.dart';

class AddNote extends StatelessWidget {
  AddNote({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Add Note",
          style: TextStyle(color: Colors.teal),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Title"),
            const SizedBox(
              height: 10,
            ),
            CustomTextFiled(controller: titleController),
            const SizedBox(
              height: 20,
            ),
            Text("Description"),
            const SizedBox(
              height: 10,
            ),
            CustomTextFiled(controller: descriptionController),
            const SizedBox(
              height: 20,
            ),
            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: MaterialButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      DateTime timeOfNow = DateTime.now();
                      print(titleController.text);
                      print(descriptionController.text);
                      print(timeOfNow);
                    }
                  },
                  height: 60,
                  minWidth: double.infinity,
                  color: Colors.teal,
                  textColor: Colors.white,
                  child: Text(
                    "Add",
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}