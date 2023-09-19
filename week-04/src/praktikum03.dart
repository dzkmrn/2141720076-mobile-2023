void main() {
  //Eksperimen Tipe Data Maps
  var gifts = {
    // Key: Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'Nama': 'Muhammad Dzaka',
    'NIM': 2141720076
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    'Nama': 'Muhammad Dzaka',
    'NIM': '2141720076'
  };

  print(gifts);
  print(nobleGases);

  //langkah 3
  print("Langkah 3:");
  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';
  mhs1['Nama'] = 'Muhammad Dzaka';
  mhs1['NIM'] = '2141720076';

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';
  mhs2[21] = 'Muhammad Dzaka';
  mhs2[22] = '2141720076';

  print(mhs1);
  print(mhs2);
}
