class Note{
  int? id;
  String? title;
  String? data;

  Note({this.id, this.title, this.data});

  Note.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['data'] = this.data;
    return data;
  }
}