

    // Klasse, um ein Medikament zu repräsentieren
class Medication {
  // Attribute
  String name; // Der Name des Medikaments (z. B. "Ibuprofen")
  String type; // Die Art des Medikaments (z. B. "Tablette", "Sirup")
  int quantity; // Die Menge des Medikaments (z. B. 2 Tabletten)
  String unit; // Einheit der Menge (z. B. "mg", "ml")
  String schedule; // Zeitplan für die Einnahme (z. B. "täglich", "alle 2 Tage")
  List<String> times; // Liste der Uhrzeiten für die Einnahme (z. B. ["08:00", "20:00"])
  int duration; // Dauer der Einnahme in Tagen (z. B. 7 Tage)

    // Konstr. zur Initialsierung der Attribute
Medication({
    required this.name,
    required this.type,
    required this.quantity,
    required this.unit,
    required this.schedule,
    required this.times,
    required this.duration,
  });
}