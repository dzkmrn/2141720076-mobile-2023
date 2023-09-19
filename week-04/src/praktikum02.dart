void main() {
  //Eksperimen Tipe Data Set
  var halogens = {'flourine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
  //hanya mencetak nilai saja
  for (var value in halogens) {
    print(value);
  }

  var names1 = <String>{};
  Set<String> names2 = {};
  var names3 = <String>{};
  names1.addAll({'Dzaka'});
  names2.add('2141720076');
  names3.addAll(names1);
  names3.addAll(names2);

  print(names1);
  print(names2);
  print(names3);
}
