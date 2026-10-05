// TUGAS MANDIRI
// menentukan nilai sampah berdasarkan jenisnya
double hargaSampah(String jenis) {
  if (jenis == "plastik") {
    return 5000;
  } else if (jenis == "kertas") {
    return 5000;
  } else if (jenis == "logam") {
    return 10000;
  } else {
    return 0;
  }
}

// menghitung uang yang didapat dari hasil setor sampah
double hitungSetoran(String jenis, double berat) {
  double harga = hargaSampah(jenis);
  double hasil = harga * berat;

  return hasil;
}

// memproses pengambilan saldo nasabah
double prosesPenarikan(double saldo, double jumlah) {
  if (jumlah < 10000) {
    print("Gagal: minimal penarikan adalah Rp10000");
    return saldo;
  } else if (jumlah > saldo) {
    print("Gagal: saldo tidak cukup");
    return saldo;
  } else {
    return saldo - jumlah;
  }
}

void main() {
  double saldoNasabah = 0;

  String jenisSampah = "plastik";
  double beratSampah = 4.5;

  double hasilSetor = hitungSetoran(jenisSampah, beratSampah);
  saldoNasabah += hasilSetor;

  print(" BANK SAMPAHku");
  print("Jenis sampah : $jenisSampah");
  print("Berat        : $beratSampah kg");
  print("Hasil setor  : Rp$hasilSetor");
  print("Saldo awal   : Rp$saldoNasabah");

  double jumlahTarik = 30000;
  saldoNasabah = prosesPenarikan(saldoNasabah, jumlahTarik);

  print("Penarikan    : Rp$jumlahTarik");
  print("Saldo akhir  : Rp$saldoNasabah");
}
