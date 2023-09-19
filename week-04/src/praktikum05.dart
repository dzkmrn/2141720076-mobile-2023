void main() {
  //Eksperimen Tipe Data Records
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  //Langkah 3:
  print("Langkah 3: ");
  (int, bool) tukar((bool, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  //Langkah 4: Record tipe anotasi pada deklarasi variabel
  print("Langkah 4: ");
  var mahasiswa = ('Muhammad Dzaka', 2141720076);
  print(mahasiswa);

  //Langkah 5:
  print("Langkah 5: ");
  var mahasiswa2 = ('first', a: 2, b: true, 'Dzaka | 2141720076');

  print(mahasiswa2.$1); //print 'first'
  print(mahasiswa2.a); //print 2
  print(mahasiswa2.b); //print true
  print(mahasiswa2.$2); //print 'last'
}
