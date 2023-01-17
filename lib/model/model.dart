class Kurs {
  String dozent = "NoName";
  String name = "Programming101";
  String id = "AI101";
  int anzahl = 20;
  String beschreibung = "Der Kurs ist toll";

  Kurs(
      {required this.dozent,
      required this.name,
      required this.id,
      required this.anzahl,
      required this.beschreibung});
}

class Model {
  List<Kurs> kurse = [];
  void addKurs(Kurs k) {
    kurse.add(k);
  }
}
