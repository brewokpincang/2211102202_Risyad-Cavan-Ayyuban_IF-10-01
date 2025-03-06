//Risyad Cavan Ayyuban
//2211102202
//S1IF-10-01

void main() {
  // Membuat array 2 dimensi dengan 4 baris dan jumlah kolom sesuai kebutuhan
  List<List<int>> arr = [
    [], // Baris 1 (kelipatan 6)
    [], // Baris 2 (bilangan ganjil)
    [], // Baris 3 (pangkat tiga)
    []  // Baris 4 (bilangan asli beda 7)
  ];

  // Baris 1: 4 bilangan kelipatan 6 berurutan mulai dari 6
  for (int i = 0; i < 4; i++) {
    arr[0].add(6 * (i + 1));
  }

  // Baris 2: 5 bilangan ganjil berurutan mulai dari 3
  int ganjil = 3;
  for (int i = 0; i < 5; i++) {
    arr[1].add(ganjil);
    ganjil += 2;
  }

  // Baris 3: 6 bilangan pangkat tiga dari bilangan asli mulai dari 4
  for (int i = 4; i < 10; i++) {
    arr[2].add(i * i * i);
  }

  // Baris 4: 7 bilangan asli berurutan beda 7 mulai dari 3
  for (int i = 0; i < 7; i++) {
    arr[3].add(3 + (i * 7));
  }

  // Outputkan hasil array
  print("Isi List:");
  for (var baris in arr) {
    print(baris.join(" "));
  }
}
