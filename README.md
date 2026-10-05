# Analisis Sistem Bank Sampah

## 1. Problem Statement

Bank Sampah merupakan sistem yang digunakan untuk mencatat hasil penyetoran sampah berdasarkan jenis dan berat sampah. Setiap jenis sampah memiliki harga yang berbeda sehingga jumlah uang yang diterima nasabah bergantung pada jenis dan berat sampah yang disetorkan.

Selain menerima setoran sampah, sistem juga perlu mengatur proses penarikan saldo. Penarikan memiliki aturan yaitu minimal Rp10.000 dan jumlah yang ditarik tidak boleh lebih besar dari saldo yang dimiliki nasabah.

Program ini dibuat untuk membantu menghitung hasil setoran sampah dan mengatur proses penarikan saldo berdasarkan aturan yang telah ditentukan.

---

## 2. Actor

Actor yang terlibat dalam sistem adalah:

- **Nasabah**  
  Menyetorkan sampah dan melakukan penarikan saldo.

- **Petugas Bank Sampah**  
  Membantu mencatat jenis dan berat sampah yang disetorkan serta memproses transaksi nasabah.

---

## 3. Input dan Output

### Input

Data yang diperlukan dalam program:

- Jenis sampah
- Berat sampah dalam kilogram
- Jumlah saldo
- Jumlah uang yang ingin ditarik

### Output

Program menghasilkan:

- Harga sampah berdasarkan jenisnya
- Hasil uang dari setoran sampah
- Status penarikan saldo
- Saldo setelah transaksi

---

## 4. Functional Requirement

Fungsi yang dibutuhkan dalam program:

1. Menentukan harga sampah berdasarkan jenisnya.
2. Menghitung hasil uang dari sampah yang disetorkan.
3. Memproses penarikan saldo nasabah.
4. Menampilkan hasil setoran dan saldo nasabah.

---

## 5. Business Rules

Aturan yang digunakan dalam sistem:

1. Setiap jenis sampah memiliki harga per kilogram yang berbeda.
2. Sampah plastik memiliki harga Rp5.000/kg.
3. Sampah kertas memiliki harga Rp5.000/kg.
4. Sampah logam memiliki harga Rp10.000/kg.
5. Penarikan saldo minimal Rp10.000.
6. Nasabah tidak dapat melakukan penarikan melebihi saldo yang dimiliki.
7. Saldo akan berkurang sesuai jumlah uang yang berhasil ditarik.
8. Hasil setoran akan menambah saldo nasabah.

---

## 6. Decomposition

Permasalahan dibagi menjadi beberapa fungsi agar setiap bagian program memiliki tugas masing-masing.

### Fungsi `hargaSampah()`

Digunakan untuk menentukan harga setiap kilogram sampah berdasarkan jenis sampah.

### Fungsi `hitungSetoran()`

Digunakan untuk menghitung jumlah uang yang diperoleh dari sampah yang disetorkan.

### Fungsi `prosesPenarikan()`

Digunakan untuk memeriksa aturan penarikan dan mengurangi saldo apabila penarikan berhasil.

### Fungsi `main()`

Digunakan untuk menjalankan program, memberikan data sampah, menghitung hasil setoran, melakukan penarikan, dan menampilkan hasilnya.

---

## 7. Pattern Recognition

Dari permasalahan tersebut terdapat pola yang dapat digunakan kembali.

Setiap kali nasabah menyetorkan sampah, proses perhitungannya memiliki pola yang sama, yaitu:

**Jenis sampah → menentukan harga → dikalikan dengan berat → mendapatkan hasil setoran.**

Pada proses penarikan juga terdapat pola pengecekan:

**Jumlah penarikan → cek minimal penarikan → cek saldo → penarikan berhasil atau ditolak.**

Dengan mengenali pola tersebut, proses yang sama dapat dibuat menjadi fungsi sehingga tidak perlu menulis perhitungan yang sama berulang kali.

---

##8. Abstraction
bankSampah
│
├── jenisSampah
├── beratSampah
├── hargaSampah
├── hasilSetoran
├── saldoNasabah
└── jumlahPenarikan
Data utama yang diperlukan dalam sistem:
Jenis sampah → menentukan harga sampah.
Berat sampah → jumlah sampah yang disetorkan dalam kg.
Harga sampah → nilai setiap kg berdasarkan jenisnya.
Hasil setoran → jumlah uang yang diperoleh dari sampah yang disetorkan.
Saldo nasabah → jumlah uang yang tersedia setelah transaksi.
Jumlah penarikan → nominal saldo yang ingin diambil oleh nasabah.

---

## 9. Algorithm

Langkah-langkah algoritma program:

1. Program dimulai.
2. Menentukan jenis sampah yang akan disetorkan.
3. Menentukan berat sampah dalam kilogram.
4. Menentukan harga sampah berdasarkan jenisnya.
5. Mengalikan harga sampah dengan berat sampah.
6. Hasil perhitungan ditambahkan ke saldo nasabah.
7. Menentukan jumlah saldo yang ingin ditarik.
8. Memeriksa apakah jumlah penarikan kurang dari Rp10.000.
9. Jika kurang dari Rp10.000, penarikan ditolak.
10. Jika tidak, program memeriksa apakah jumlah penarikan melebihi saldo.
11. Jika jumlah penarikan melebihi saldo, penarikan ditolak.
12. Jika memenuhi aturan, saldo dikurangi dengan jumlah penarikan.
13. Menampilkan hasil setoran, jumlah penarikan, dan saldo akhir.
14. Program selesai.

---

## 10. Pseudocode

```text
MULAI

Tentukan jenis sampah
Tentukan berat sampah

JIKA jenis sampah adalah plastik
    harga = 5000
JIKA jenis sampah adalah kertas
    harga = 5000
JIKA jenis sampah adalah logam
    harga = 10000

hasil setoran = harga × berat sampah

saldo = saldo + hasil setoran

Tentukan jumlah penarikan

JIKA jumlah penarikan < 10000
    tampilkan "Penarikan gagal"
    saldo tetap
JIKA jumlah penarikan > saldo
    tampilkan "Saldo tidak cukup"
    saldo tetap
SELAIN ITU
    saldo = saldo - jumlah penarikan
    tampilkan saldo setelah penarikan

Tampilkan hasil setoran
Tampilkan jumlah penarikan
Tampilkan saldo akhir

SELESAI
