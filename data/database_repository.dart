import '../models/medication.dart';

// Abstrakte Klasse als Vorlage für das Datenbank-Repository
abstract class DatabaseRepository {
  // Create-Methode: Fügt ein neues Medikament in die Datenbank ein
  void addMedication(String id, Medication newMedication);

  // Read-Methode: Gibt eine Liste aller Medikamentennamen zurück
  List<String> getAllMedicationNames();

  // Delete-Methode: Entfernt ein Medikament anhand der ID aus der Datenbank
  void removeMedication(String id);
}
