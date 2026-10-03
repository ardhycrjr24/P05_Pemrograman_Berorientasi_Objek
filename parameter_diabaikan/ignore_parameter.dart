class Mahasiswa {
  String name;
  Function(String name)? doingHobby;
  Mahasiswa(this.name, {this.doingHobby});
  void takeARest() {
    final hobby = doingHobby;
    if (hobby != null) {
      hobby(name);
    }
  }
}
