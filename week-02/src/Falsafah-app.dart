import 'Faylasuf.dart';

void main() {
  Faylasuf faylasuf = new Faylasuf(20, "Avicenna");

  for (var i = 1; i <= 10; i++) {
    print(
        "Assalamualaikum, My name is ${faylasuf.getNama()} Im ${faylasuf.getUmur()} years old");
  }
}
