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
  String json = '''
[
  {"id":1, "first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
  {"id":2, "first":"Vladimir", "last":"Cezar", "email":"cezarv@algonquincollege.com"},
  {"id":3, "first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
  {"id":4, "first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
]
''';
}
