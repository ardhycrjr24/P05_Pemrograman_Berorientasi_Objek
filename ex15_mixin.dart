import 'abstrak_interface/barbarian.dart';
import 'abstrak_interface/knight.dart';

void main(List<String> args) {
  Knight k = Knight();
  print('Knight minum : ${k.drink()}');
  Barbarian b = Barbarian();
  print('Barbarian minum : ${b.drink()}');
}
