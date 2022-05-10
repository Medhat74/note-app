import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  String title;
  String description;
  String date;
   CustomCard({Key? key,required this.title,required this.date,required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title:Text(title),
        subtitle: Text(description),
        trailing: Text(date),
        leading: Icon(Icons.description,color: Colors.teal,),
      ),
    );
  }
}
