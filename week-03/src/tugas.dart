var dzaka = "Muhammad Dzaka Murran Rusid | 2141720076";
void main() {
  bool isPrime = false;
  for (var i = 2; i <= 201; i++) {
    isPrime = true;
    for (var j = 2; j <= i; j++) {
      if (j != i) {
        if (i % j == 0) {
          isPrime = false;
          break;
        }
      }
    }
    if (isPrime) {
      print(i);
      print(dzaka);
    }
  }
}
