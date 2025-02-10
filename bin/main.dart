import 'dart:convert';

class Students {
  List<Map<String, dynamic>> people;

  Students(List<Map<String, dynamic>> this.people);

  sort(String fieldName) {}
  output() {}
  plus(Map<String, dynamic> person) {}
  remove(String fieldName) {}
}

void main() {
  String orderOfWizards = '''
[
  {"id":1, "first":"Saruman", "last":"The White", "email":"burntheents@valinor.com"},
  {"id":2, "first":"Gandalf", "last":"The Gray", "email":"TakeThatBalrog@valinor.com"},
  {"id":3, "first":"Tony", "last":"Davidson", "email":"MushroomLover@valinor.com"},
  {"id":4, "first":"Alatar", "last":"The Blue", "email":"GhostedAndGone@valinor.com"},
  {"id":5, "first":"Pallando", "last":"The Blue", "email":"SeeYaLater@valinor.com"}
]
''';
}
