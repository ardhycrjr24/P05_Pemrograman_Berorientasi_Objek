/*
 * Praktikum 5 - Pemrograman Berorientasi Objek di Dart
 * oleh : Ardiansyah
 */
import 'person.dart';

class Student extends Person {
  Student({String studentName = 'Student Baru'}) : super(name: studentName) {
    print('constructor Student dipanggil');
  }
}
