class Note {
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;
  Note(this._title, this._priority, this._date, [this._description]);
  Note.withId(this._title, this._priority, this._id, this._date,
      [this._description]);
  int get id => _id;

  String get title => _title;
  String get description => _description;
  int get priority => _priority;
  String get date => _date;

  set title(String newTitle) {
    this._title = newTitle;
  }

  set description(String newDescription) {
    this._description = newDescription;
  }

  set date(String newDate) {
    this._date = newDate;
  }

  set priority(int newPriority) {
    this._priority = newPriority;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['date'] = _date;
    map['priority'] = _priority;
    return map;
  }

  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._date = map['date'];
  }
}
