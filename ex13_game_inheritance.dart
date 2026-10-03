import 'game/hero.dart';
import 'game/monster.dart';
import 'game/monster_kecoa.dart';
import 'game/monster_ubur_ubur.dart';

void main(List<String> args) {
  Hero hero = Hero();
  Monster monster = Monster();
  MonsterUburUbur uburUbur = MonsterUburUbur();
  Monster monsterUbur = MonsterUburUbur();

  hero.healthPoint = -10;
  monster.healthPoint = 10;
  uburUbur.healthPoint = -3;

  print('hero HP: ${hero.healthPoint.toString()}');
  print('monster HP: ${monster.healthPoint.toString()}');
  print('monster ubur-ubur HP: ${uburUbur.healthPoint.toString()}');
  print(hero.killAMonster());
  print(monster.eatHuman());
  print('Ubur-ubur dapat berenang ${uburUbur.swim()}');

  List<Monster> monsters = [];

  monsters.add(MonsterUburUbur());
  monsters.add(MonsterKecoa());
  monsters.add(MonsterUburUbur());

  for (Monster m in monsters) {
    if (m is MonsterUburUbur) {
      print('Monster ubur-ubur juga dapat berenang ${m.swim()}');
    }
  }

  print(
      'Monster sejenis ubur-ubur berenang ${(monsterUbur as MonsterUburUbur).swim()}');
}
