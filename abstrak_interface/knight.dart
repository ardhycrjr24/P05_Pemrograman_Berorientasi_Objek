/*
 * Praktikum 5 - Pemrograman Berorientasi Objek di Dart
 * oleh : Ardiansyah
 */
import 'drink_ability_mixin.dart';
import 'hero.dart';

class Knight extends Hero with DrinkAbilityMixin {
  @override
  String drink() => 'Srup... Srup... Srup...';
}
