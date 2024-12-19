import '../models/medication.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  // Map zur Speicherung von Medikamentendaten, wobei die ID der Schlüssel ist
  Map<String, Medication> medicationData = {};

  // Methode zum Hinzufügen eines neuen Medikaments zur Datenbank
  @override
  void addMedication(String id, Medication newMedication) {
    medicationData[id] = newMedication;
    print('Medikament mit ID $id hinzugefügt: ${newMedication.name}');
  }

  // Methode zum Abrufen aller Medikamentennamen
  @override
  List<String> getAllMedicationNames() {
    // Erstelle eine Liste für die Medikamentennamen
    List<String> allMedicationNames = [];

    // Iteriere durch die Map und füge die Namen der Medikamente hinzu
    medicationData.forEach((key, medication) {
      allMedicationNames.add(medication.name);
    });

    return allMedicationNames;
  }

  // Methode zum Entfernen eines Medikaments anhand seiner ID
  @override
  void removeMedication(String id) {
    // Überprüfen, ob die ID existiert
    if (medicationData.containsKey(id)) {
      var removedMedication = medicationData.remove(id);
      print('Medikament mit ID $id entfernt: ${removedMedication?.name}');
    } else {
      print('Medikament mit ID $id nicht gefunden.');
    }
  }
}

