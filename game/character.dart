/*
 * Praktikum 5 - Pemrograman Berorientasi Objek di Dart
 * oleh : Ardiansyah
 */
class Character {
  int _healthPoint = 0;
  int get healthPoint => _healthPoint;
  set healthPoint(int value) {
    if (value < 0) {
      value *= -1;
    }
    _healthPoint = value;
  }
}
