class Person {
  String name = 'no_name';
  Person({String name = 'no_name'}) {
    print('constructor Person dipanggil');
    this.name = name;
  }
}
