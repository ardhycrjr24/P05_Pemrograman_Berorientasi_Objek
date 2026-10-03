/*
 * Praktikum 5 - Pemrograman Berorientasi Objek di Dart
 * oleh : Ardiansyah
 */
import 'monster.dart';

class MonsterUburUbur extends Monster {
  String swim() => 'waash... waash..';

  @override
  String eatHuman() {
    return 'Sedot-sedot asik';
  }

  @override
  String move() {
    return 'Berenang-renang';
  }
}
