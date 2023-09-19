void main() {
  //Eksperimen Tipe Data List: Spread dan Control-flow Operators

  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];
  print(list1);
  print(list2);
  print(list2.length);

  //Langkah 3
  print("Langkah 3:");
  var list1a = <int?>[1, 2, null];
  print(list1a);
  var list3 = [0, ...?list1a];
  var Nim = [2141720076];
  var list4 = [list3, ...Nim];
  print(list3.length);
  print(list4);

  //Langkah 4
  print("Langkah 4 (False):");
  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  //Langkah 5
  print("Langkah 5 (login = lainnya):");
  var login = 'Supervisor';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav2);

  //Langkah 6
  print("Langkah 6: ");
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
