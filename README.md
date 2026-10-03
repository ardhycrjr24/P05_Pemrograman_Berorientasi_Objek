# Praktikum 5 — Pemrograman Berorientasi Objek di Dart

**Nama:** Ardiansyah
**Mata Kuliah:** Pemrograman Multiplatform
**Tanggal:** 3 Oktober 2026

---

## Tujuan Praktikum

Di praktikum ini saya belajar:

- Bikin kelas dan objek
- Bikin konstruktor dan macam-macam parameternya
- Ngerti hak akses (public/private)
- Pakai setter dan getter
- Pakai atribut dan metode statis
- Ngerti inheritance (kelas turunan)
- Bikin kelas abstrak dan interface
- Pakai mixin, konstruktor super, dan parameter yang diabaikan
- Pakai async, await, dan Future
- Pakai tipe generic

---

## Cara Menjalankan

```bash
dart ex1_kelas.dart
dart ex18_async_await_future.dart 1   # mode await
dart ex18_async_await_future.dart 2   # mode then
```

---

## Pemahaman dan Hasil Program

### ex1 — Kelas dan Objek
Kelas itu kayak cetak biru rumah, objeknya itu rumahnya beneran. Di sini saya bikin kelas `Point` yang punya atribut `x` dan `y`, terus bikin objeknya pakai `Point()` dan isi nilainya satu-satu. Kelas cuma template, objek yang jalan.

**Hasil:**
```
Titik a terletak di koordinat (2, 3)
```

### ex2 — Metode pada Kelas
Nilainya nggak diisi langsung dari `main`, tapi lewat metode `setLocation()`. Jadi perubahan data lewat satu pintu aja. Ini namanya enkapsulasi, biar rapi dan gampang dikontrol.

**Hasil:**
```
Titik a terletak di koordinat (2, 3)
```

### ex3 — Konstruktor
Konstruktor itu metode khusus yang jalan otomatis waktu objek dibuat. Jadi `Point(2, 3)` langsung isi `x = 2` dan `y = 3`, nggak perlu panggil `setLocation` lagi. `this` itu buat nunjuk ke atribut milik objeknya, biar beda sama parameternya.

**Hasil:**
```
Sebelum diubah:
Titik a terletak di koordinat (2, 3)

Setelah diubah:
Titik a terletak di koordinat (4, 5)
```

### ex4 — Parameter Opsional Named `{...}`
Pakai kurung kurawal `{}`, jadi parameternya opsional dan bebas urutan. Karena `y` nggak diisi, hasilnya `null`. Enaknya kalau ada banyak parameter, kita tinggal isi yang mau aja.

**Hasil:**
```
Sebelum diubah:
Titik a terletak di koordinat (2, null)

Setelah diubah:
Titik a terletak di koordinat (4, 5)
```

### ex5 — Parameter Opsional Positional `[...]`
Sama kayak ex4, tapi pakai kurung siku `[]`. Bedanya parameter diisi **sesuai urutan**. `Point(2)` berarti `x = 2`, sedangkan `y` nggak diisi jadi `null`.

**Hasil:**
```
Sebelum diubah:
Titik a terletak di koordinat (2, null)

Setelah diubah:
Titik a terletak di koordinat (4, 5)
```

### ex6 — Konstruktor Nama Tertentu
Satu kelas bisa punya banyak konstruktor. `Point()` bikin titik di (0,0), sedangkan `Point.createInstance(2, 3)` bikin titik yang koordinatnya kita tentuin. Jadi ada beberapa cara bikin objek dalam satu kelas.

**Hasil:**
```
Titik a terletak di koordinat (0, 0)
Titik b terletak di koordinat (2, 3)
```

### ex7 — Hak Akses (Private)
Atribut yang namanya diawali tanda `_` itu private, artinya cuma bisa diakses di dalam file yang sama. Dari luar nggak boleh langsung `a._x = 5`, harus lewat metode kayak `setLocation()`. Ini prinsip encapsulation: bagian dalam disimpan rapat-rapat.

**Hasil:**
```
Titik a terletak di koordinat (0, 0)
Titik b terletak di koordinat (2, 3)
Titik c terletak di koordinat (2, 3)
```

### ex8 — Setter dan Getter (Blok)
Karena `_x` private, saya bikin `set x()` buat nulis dan `get x()` buat baca. Dari `main` kelihatannya kayak `a.x = 2` biasa, padahal yang jalan itu metode setter-nya. Jadi atributnya tetap aman tapi pemakainya nggak repot.

**Hasil:**
```
Titik a terletak di koordinat (2, 3)
```

### ex9 — Setter dan Getter (Arrow)
Isinya sama persis kayak ex8, cuma ditulis lebih pendek pakai arrow `=>`. Contoh: `set x(int value) => _x = value;`. Lebih ringkas tapi fungsinya sama.

**Hasil:**
```
Titik a terletak di koordinat (2, 3)
```

### ex10 — Atribut Statis
`static int counter` itu punya kelas, bukan punya objek, jadi nilainya dipakai bareng-bareng. Tiap kali objek dibuat, `counter` nambah. Makanya kelihatan nilainya 1, 2, 3. Diaksesnya lewat `Point.counter` bukan lewat objek.

**Hasil:**
```
Pada saat a dibuat, counter bernilai 1
Pada saat b dibuat, counter bernilai 2
Pada saat c dibuat, counter bernilai 3
```

### ex11 — Metode Statis
Metode `static` dipanggil langsung dari kelas, misal `Arithmetic.add(10.0, 3.0)`, tanpa bikin objek. Cocok buat fungsi yang emang nggak butuh data objek, kayak kalkulator ini.

**Hasil:**
```
10.0 + 3.0 = 13.0
10.0 - 3.0 = 7.0
10.0 * 3.0 = 30.0
10.0 / 3.0 = 3.3333333333333335
10 ~/ 3 = 3
10 % 3 = 1
```

### ex12 — Kelas Turunan (Inheritance)
`Child extends Parent` artinya `Child` mewarisi semua isi `Parent`. Jadi objek `Child` bisa panggil `m1()` milik parent dan `m2()` miliknya sendiri. Istilahnya Child IS-A Parent.

**Hasil:**
```
Metode m1() miliki kelas Parent
Metode m2() miliki kelas Child
```

### ex13 — Inheritance pada Proyek Game
Susunan kelasnya: `Character` → `Monster`/`Hero` → `MonsterKecoa`/`MonsterUburUbur`. Semua karakter punya `healthPoint` dari `Character`, dan ada validasi kalau nilainya negatif otomatis jadi positif (makanya hero yang diisi -10 hasilnya 10). Di sini juga kelihatan pola `List<Monster>` yang isinya objek beda-beda terus dicek pakai `is` dan dipaksa pakai `as`.

**Hasil:**
```
hero HP: 10
monster HP: 10
monster ubur-ubur HP: 3
Take this!!
Grr... Delicious... Yummy..
Ubur-ubur dapat berenang waash... waash..
Monster ubur-ubur juga dapat berenang waash... waash..
Monster ubur-ubur juga dapat berenang waash... waash..
Monster sejenis ubur-ubur berenang waash... waash..
```

### ex14 — Kelas Abstrak dan Interface
- `abstract class Monster` punya metode yang sudah jalan (`eatHuman()`) tapi juga ada metode kosong `move()` yang wajib diisi turunannya. Objek `Monster` nggak bisa langsung dibuat, makanya baris `monsters.add(Monster())` dikomentari.
- `FlyingMonster` fungsinya kayak kontrak/interface, cuma berisi deklarasi `fly()` tanpa isi. `MonsterKecoa` yang meng-`implements` wajib ngisi sendiri.
- `MonsterUcoa` meng-implements dua interface sekaligus. Dart nggak bisa multiple inheritance, tapi bisa multiple interface.

**Hasil:**
```
Syuuung...
Terbang-terbang melayang
```

### ex15 — Mixin
Mixin itu kayak "keahlian tambahan" yang bisa ditempel ke kelas lain. `DrinkAbilityMixin` berisi kemampuan `drink()`, terus dipakai oleh `Knight` dan `Barbarian` lewat `with`. `Knight` mengganti isi `drink()` jadi srup-srup, sedangkan `Barbarian` pakai punya mixin (gluk-gluk). Kalau inheritance buat hubungan IS-A, mixin buat nambah kemampuan.

**Hasil:**
```
Knight minum : Srup... Srup... Srup...
Barbarian minum : Gluk... Gluk... Gluk...
```

### ex16 — Konstruktor Super
`Student` memanggil konstruktor induknya pakai `super(name: studentName)`. Kelihatan dari output: konstruktor `Person` jalan duluan, baru `Student`. Jadi bagian induk harus siap dulu sebelum bagian anaknya.

**Hasil:**
```
constructor Person dipanggil
no_name
constructor Person dipanggil
constructor Student dipanggil
Student Baru
constructor Person dipanggil
constructor Student dipanggil
Farhana
```

### ex17 — Parameter yang Diabaikan
`Mahasiswa` punya parameter `doingHobby` isinya fungsi (hobi). Kalau nggak dikasih hobi, metodenya diam aja nggak error — makanya disebut parameter yang diabaikan. Di sini saya coba 3 cara: pakai fungsi yang sudah ada (`davidsHobby`), closure biasa, dan lambda yang parameternya diganti `_` karena nggak dipakai.

**Hasil:**
```
David is swimming
Dewi is singing
Swimming in the pool
```

### ex18 — Async, Await, dan Future
`getDataAsync()` itu tugas yang ngerjainnya lama (ditahan 3 detik pakai `Future.delayed`).
- **Mode 1 (await):** program nunggu tugasnya selesai, jadi urutannya rapi: `job 5` dulu baru `job 6`.
- **Mode 2 (.then):** program nggak nunggu, `job 6` langsung jalan, `job 5` muncul belakangan.
Intinya async bikin tugas berat nggak bikin program nge-hang.

**Hasil mode 1:**
```
job 1
job 2
get data [done]
job 3 : Joko
job 4
get data async [done]
job 5 : Badu
job 6
```

**Hasil mode 2:**
```
job 1
job 2
get data [done]
job 3 : Joko
job 4
job 6
get data async [done]
job 5 : Badu
```

### ex19 — Tipe Generic
`SecureBox<Tipe>` itu satu kotak yang bisa nyimpen data apa aja — String, int, DateTime, sampai objek `Person` — tinggal ganti tipenya waktu bikin objek. Isinya cuma bisa dibuka kalau PIN-nya bener, kalau salah hasilnya `null`. Jadi generic bikin kelasnya bisa dipakai ulang buat tipe data apa pun, nggak perlu bikin kelas baru tiap tipe.

**Hasil:**
```
null
Hello
1000
2026-10-03 18:16:33.868555
Bayu
```

---

## Penyesuaian karena Dart 3 (Null-Safety)

Modul ini ditulis untuk Dart lama, sedangkan di laptop saya Dart-nya versi 3.13, jadi ada beberapa bagian yang saya sesuaikan supaya programnya jalan. Logikanya tetap sama:

| Modul (Dart lama) | Saya ubah jadi (Dart 3) | Alasannya |
|---|---|---|
| `int x;` | `int x = 0;` | Di Dart 3, variabel wajib dikasih nilai awal |
| `Point({this.x, this.y})` | `int? x; int? y;` | Biar bisa `null`, output tetap `(2, null)` sesuai modul |
| `Tipe getData(...)` | `Tipe? getData(...)` | Fungsi ini bisa mengembalikan `null` |
| `Function(String) doingHobby` | `Function(String)? doingHobby` | Callback-nya opsional jadi harus nullable |
| import `moster_ubur_ubur.dart` | `monster_ubur_ubur.dart` | Ada salah ketik nama file di modul |

Sisa warning dari `dart analyze` cuma 3 variabel nggak kepakai di `ex10`, itu emang dari kode modulnya sendiri, bukan error.

---

**Referensi:** YouTube Erico Darmawan H — PBO Dart: https://www.youtube.com/watch?v=IJlyhGV7-Fs&list=PLZQbl9Jhl-VDeCuNNp7C2SR1lFsIjQRQo
