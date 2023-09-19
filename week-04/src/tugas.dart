void main() {
  var result = addSubtract(8, 5);
  print("Addition: ${result[0]}");
  print("Subtraction: ${result[1]}");
}

List<int> addSubtract(int a, int b) {
  return [a + b, a - b];
}
