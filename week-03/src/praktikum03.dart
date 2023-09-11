void main() {
  //Langkah 1
  for (var index = 1; index < 27; index++) {
    print(index);
    if (index == 21) {
      break;
    } else if (index > 1 || index < 7) {
      continue;
    }
    print(index);
  }
}
