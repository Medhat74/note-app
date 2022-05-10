class Note {
  String? title;
  String? body;
  String? date;

  Note({this.title, this.body,required this.date});

  Note.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}