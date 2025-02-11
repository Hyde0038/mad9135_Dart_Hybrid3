import 'dart:convert';

class Wizards {
  List<Map<String, dynamic>> people;

  Wizards(List<Map<String, dynamic>> this.people);

  sort(String id) {
    people.sort((wizardA, wizardB) =>
        wizardA[id].toString().compareTo(wizardB[id].toString()));
    output();
  }

  output() {
    for (var wizard in people) {
      print(wizard);
    }
    // Just adding a visual breaker cause it hurts my eyes
    print('=-=-=-=-=-=-=-=-=-=');
  }

  plus(Map<String, dynamic> wizard) {
    people.add(wizard);
    output();
  }

  remove(String id) {
    for (var wizard in people) {
      wizard.remove(id);
    }
    output();
  }
}

void main() {
  String orderOfWizards = '''
[
  {"id":1, "name":"Saruman", "title":"the White", "location":"Isengard", "Maiar":"Aulë"},
  {"id":2, "name":"Gandalf", "title":"the Gray", "location":"Ubiquitous", "Maiar":"Manwë and Varda"},
  {"id":3, "name":"Radagast", "title":"the Brown", "location":"Rhosgobel", "Maiar":"Yavanna"},
  {"id":4, "name":"Alatar", "title":"the Blue", "location":"Valinor", "Maiar":"Oromë"}
]
''';

  List<Map<String, dynamic>> wizardList =
      json.decode(orderOfWizards).cast<Map<String, dynamic>>();
  var wizards = Wizards(wizardList);

  print('Order of Wizards:');
  wizards.output();

  print('Adding a wizard to the order:');
  wizards.plus({
    "id": 5,
    "first": "Pallando",
    "title": "the Blue",
    "location": "Valinor"
  });

  print('Sorting wizards by name:');
  wizards.sort('name');

  print('Removing the location from all wizards:');
  wizards.remove('location');
}
