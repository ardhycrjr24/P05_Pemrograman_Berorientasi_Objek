/*
 * Praktikum 5 - Pemrograman Berorientasi Objek di Dart
 * oleh : Ardiansyah
 */
class Point {
  int _x = 0;
  int _y = 0;

  Point() {
    this._x = 0;
    this._y = 0;
  }

  Point.createInstance(int x, int y) {
    this._x = x;
    this._y = y;
  }

  void setLocation(int xValue, int yValue) {
    this._x = xValue;
    this._y = yValue;
  }

  Point _clone() {
    return Point.createInstance(this._x, this._y);
  }
}

void main(List<String> args) {
  Point a, b, c;
  a = Point();
  print('Titik a terletak di koordinat (${a._x}, ${a._y})');
  b = Point.createInstance(2, 3);
  print('Titik b terletak di koordinat (${b._x}, ${b._y})');
  c = b._clone();
  print('Titik c terletak di koordinat (${c._x}, ${c._y})');
}
