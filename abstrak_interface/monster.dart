/*
 * Praktikum 5 - Pemrograman Berorientasi Objek di Dart
 * oleh : Ardiansyah
 */
import 'character.dart';

abstract class Monster extends Character {
  String eatHuman() => 'Grr... Delicious... Yummy..';
  String move();
}
