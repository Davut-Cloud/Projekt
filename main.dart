import 'data/database_repository.dart';
import 'data/mock_database.dart';
import 'models/medication.dart';

void main() {
  // MockDatabase als DatabaseRepository verwenden
  DatabaseRepository mockDatabase = MockDatabase();

  //  Einträge in die MockDatabase hinzufügen
  Medication aspirin = Medication(
    name: "Aspirin",
    type: "Tablette",
    quantity: 20,
    unit: "mg",
    schedule: "täglich",
    times: ["08:00", "20:00"],
    duration: 10,
  );

  mockDatabase.addMedication("001", aspirin);

  Medication paracetamol = Medication(
    name: "Paracetamol",
    type: "Tablette",
    quantity: 15,
    unit: "mg",
    schedule: "alle 2 Tage",
    times: ["10:00"],
    duration: 5,
  );

  mockDatabase.addMedication("002", paracetamol);

  //  Alle Medikamentennamen abrufen und ausgeben
  List<String> medicationNames = mockDatabase.getAllMedicationNames();
  print("Gespeicherte Medikamente: $medicationNames");

  //  Ein Medikament aus der Datenbank löschen
  print("\nLösche Paracetamol (ID: 002)...");
  mockDatabase.removeMedication("002");

  //  Alle Medikamentennamen nach dem Löschen erneut abrufen
  medicationNames = mockDatabase.getAllMedicationNames();
  print("Übrige Medikamente nach Löschung: $medicationNames");

  
}