# Bank Sampah

## Analisis Sistem

### 1. Problem Statement

Setiap jenis sampah yang diterima oleh Bank Sampah memiliki harga per kg yang berbeda. Oleh karena itu, jumlah uang yang diperoleh nasabah ditentukan dari jenis dan berat sampah yang disetorkan.

Selain proses penyetoran, nasabah juga dapat melakukan penarikan saldo. Penarikan hanya dapat dilakukan apabila nominal yang ditarik minimal Rp10.000 dan tidak melebihi saldo yang tersedia.

---

### 2. Actor

**Nasabah**

Nasabah merupakan pihak yang melakukan penyetoran sampah dan menggunakan saldo yang diperoleh untuk melakukan penarikan.

---

### 3. Input & Output

#### Input

1. Jenis sampah
2. Berat sampah dalam kg
3. Jumlah saldo yang ingin ditarik

#### Output

1. Harga sampah berdasarkan jenisnya
2. Hasil uang dari penyetoran sampah
3. Saldo setelah penyetoran
4. Hasil proses penarikan saldo
5. Saldo akhir nasabah

---

### 4. Functional Requirement

| Kode | Functional Requirement |
| --- | --- |
| FR-01 | Sistem dapat menentukan harga sampah berdasarkan jenis sampah. |
| FR-02 | Sistem dapat menghitung nilai setoran berdasarkan berat dan harga sampah. |
| FR-03 | Sistem dapat menambahkan hasil setoran ke saldo nasabah. |
| FR-04 | Sistem dapat menerima jumlah penarikan saldo dari nasabah. |
| FR-05 | Sistem dapat mengecek batas minimal penarikan saldo. |
| FR-06 | Sistem dapat mengecek kecukupan saldo sebelum melakukan penarikan. |
| FR-07 | Sistem dapat menampilkan saldo setelah transaksi. |

---

### 5. Business Rules

| Kode | Business Rule |
| --- | --- |
| BR-01 | Plastik memiliki harga Rp5.000 per kg. |
| BR-02 | Kertas memiliki harga Rp5.000 per kg. |
| BR-03 | Logam memiliki harga Rp10.000 per kg. |
| BR-04 | Penarikan saldo paling sedikit sebesar Rp10.000. |
| BR-05 | Penarikan tidak dapat dilakukan apabila jumlahnya lebih besar dari saldo. |
| BR-06 | Saldo bertambah setelah setoran sampah berhasil diproses. |
| BR-07 | Saldo berkurang sesuai nominal apabila penarikan berhasil. |

---

### 6. Decomposition

```text
bankSampah
│
├── setoranSampah
│   ├── jenisSampah
│   ├── beratSampah
│   ├── tentukanHarga
│   └── hitungSetoran
│
├── saldoNasabah
│   ├── tambahSaldo
│   └── prosesPenarikan
│       ├── cekMinimalPenarikan
│       └── cekKecukupanSaldo
│
└── tampilkanHasil
    ├── hasilSetoran
    ├── jumlahPenarikan
    └── saldoAkhir

    Program dibagi menjadi beberapa bagian berdasarkan proses yang dilakukan. Proses penentuan harga, perhitungan setoran, dan penarikan saldo dipisahkan agar setiap bagian memiliki tugas masing-masing.
7. Pattern Recognition
Dalam proses Bank Sampah terdapat beberapa pola yang dapat dikenali:
Harga berdasarkan jenis sampah
Jenis sampah yang berbeda memiliki harga per kg yang berbeda.
Perhitungan hasil setoran
Nilai setoran diperoleh dari harga sampah per kg dikalikan dengan berat sampah yang disetorkan.
Validasi penarikan
Sebelum saldo dikurangi, jumlah penarikan perlu diperiksa berdasarkan batas minimal dan jumlah saldo yang tersedia.
Perubahan saldo
Setoran akan menambah saldo, sedangkan penarikan yang berhasil akan mengurangi saldo.
8. Abstraction
bankSampah
│
├── jenisSampah
├── beratSampah
├── hargaSampah
├── hasilSetoran
├── saldoNasabah
└── jumlahPenarikan
Data utama yang digunakan dalam sistem:
Jenis sampah → menentukan harga sampah.
Berat sampah → jumlah sampah yang disetorkan dalam kg.
Harga sampah → nilai setiap kg berdasarkan jenisnya.
Hasil setoran → jumlah uang yang diperoleh dari sampah yang disetorkan.
Saldo nasabah → jumlah uang yang tersedia setelah transaksi.
Jumlah penarikan → nominal saldo yang ingin diambil oleh nasabah.
Jenis sampah yang digunakan:
JenisSampah
├── plastik
├── kertas
└── logam
9. Algorithm
Program dimulai.
Tentukan jenis sampah.
Tentukan berat sampah.
Tentukan harga berdasarkan jenis sampah.
Hitung hasil setoran dari harga dikalikan berat sampah.
Tambahkan hasil setoran ke saldo nasabah.
Tentukan jumlah penarikan.
Periksa apakah jumlah penarikan kurang dari Rp10.000.
Jika kurang dari Rp10.000, penarikan ditolak.
Jika tidak, periksa apakah jumlah penarikan lebih besar dari saldo.
Jika jumlah penarikan lebih besar dari saldo, penarikan ditolak.
Jika memenuhi kedua aturan, saldo dikurangi dengan jumlah penarikan.
Tampilkan hasil setoran, jumlah penarikan, dan saldo akhir.
Program selesai.
10. Pseudocode
MULAI

FUNCTION hargaSampah(jenis)
    JIKA jenis = "plastik"
        RETURN 5000

    JIKA jenis = "kertas"
        RETURN 5000

    JIKA jenis = "logam"
        RETURN 10000

    RETURN 0
END FUNCTION


FUNCTION hitungSetoran(jenis, berat)
    harga = hargaSampah(jenis)
    hasil = harga × berat

    RETURN hasil
END FUNCTION


FUNCTION prosesPenarikan(saldo, jumlah)
    JIKA jumlah < 10000
        Tampilkan "Penarikan minimal Rp10000"
        RETURN saldo

    JIKA jumlah > saldo
        Tampilkan "Saldo tidak cukup"
        RETURN saldo

    saldo = saldo - jumlah

    RETURN saldo
END FUNCTION


saldo = 0

Tentukan jenis sampah
Tentukan berat sampah

hasilSetoran = hitungSetoran(jenis, berat)

saldo = saldo + hasilSetoran

Tentukan jumlah penarikan

saldo = prosesPenarikan(saldo, jumlahPenarikan)

Tampilkan hasil setoran
Tampilkan jumlah penarikan
Tampilkan saldo akhir

SELESAI
11. Flowchart
Flowchart proses utama Bank Sampah:



Kesimpulan
Program Bank Sampah menggunakan beberapa fungsi untuk membagi proses menjadi bagian yang lebih sederhana. Program dapat menentukan harga berdasarkan jenis sampah, menghitung hasil setoran, menambahkan hasil setoran ke saldo, serta melakukan pengecekan sebelum saldo ditarik.
Dengan adanya aturan minimal penarikan dan pengecekan saldo, program dapat mencegah penarikan yang tidak sesuai dengan ketentuan Bank Sampah.
