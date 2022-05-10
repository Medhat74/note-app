
import 'package:flutter/material.dart';
import 'package:notes_app/views/add_note.dart';
import 'package:notes_app/views/components/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Notes App",
          style: TextStyle(color: Colors.teal),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.builder(
                itemBuilder: (context, index) => CustomCard(
                    title: "note1", description: "description", date: "20/5"),
                itemCount: 5,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddNote()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
