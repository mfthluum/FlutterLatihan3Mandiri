# Bank Sampah

## Analisis Sistem

### 1. Problem Statement

Setiap jenis sampah yang diterima oleh Bank Sampah memiliki harga per kg yang berbeda. Oleh karena itu, jumlah uang yang diperoleh nasabah ditentukan dari jenis dan berat sampah yang disetorkan.

Selain proses penyetoran, nasabah juga dapat melakukan penarikan saldo. Penarikan hanya dapat dilakukan apabila nominal yang ditarik minimal Rp10.000 dan tidak melebihi saldo yang tersedia.

---

## 2. Actor

Actor yang terlibat dalam sistem adalah:

- **Nasabah**  
  Menyetorkan sampah dan melakukan penarikan saldo.

- **Petugas Bank Sampah**  
  Membantu mencatat jenis dan berat sampah yang disetorkan serta memproses transaksi nasabah.

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
├── hargaSampah
│   └── menentukan harga berdasarkan jenis sampah
│
├── hitungSetoran
│   ├── mengambil harga sampah
│   └── menghitung harga × berat
│
├── prosesPenarikan
│   ├── mengecek minimal penarikan
│   ├── mengecek kecukupan saldo
│   └── mengurangi saldo jika penarikan berhasil
│
└── main
    ├── menentukan data sampah
    ├── menambahkan hasil setoran ke saldo
    ├── menentukan jumlah penarikan
    └── menampilkan hasil transaksi
```

Program dibagi menjadi beberapa fungsi berdasarkan proses yang dilakukan. Fungsi `hargaSampah` digunakan untuk menentukan harga berdasarkan jenis sampah, `hitungSetoran` digunakan untuk menghitung hasil setoran, sedangkan `prosesPenarikan` digunakan untuk memproses penarikan saldo.

---

### 7. Pattern Recognition

Dalam sistem Bank Sampah terdapat beberapa pola:

- **Penentuan harga berdasarkan jenis**  
  Harga sampah ditentukan berdasarkan jenis sampah yang dipilih.

- **Perhitungan hasil setoran**  
  Hasil setoran dihitung dari harga sampah per kg dikalikan dengan berat sampah.

- **Pengecekan penarikan**  
  Setiap penarikan diperiksa terlebih dahulu. Jika nominal kurang dari Rp10.000 atau lebih besar dari saldo, maka penarikan ditolak.

- **Perubahan saldo**  
  Hasil setoran ditambahkan ke saldo. Jika penarikan berhasil, saldo akan dikurangi sesuai jumlah penarikan. Jika penarikan gagal, saldo tetap.

---

### 8. Abstraction

```text
bankSampah
│
├── jenisSampah
├── beratSampah
├── harga
├── hasilSetor
├── saldoNasabah
└── jumlahTarik
```

Data yang digunakan dalam program:

- **Jenis sampah** → menentukan harga sampah.
- **Berat sampah** → jumlah sampah yang disetorkan dalam kg.
- **Harga** → harga sampah berdasarkan jenisnya.
- **Hasil setor** → hasil perkalian harga dengan berat sampah.
- **Saldo nasabah** → saldo yang dimiliki setelah hasil setoran ditambahkan.
- **Jumlah tarik** → nominal saldo yang ingin ditarik.

Jenis sampah yang digunakan:

```text
JenisSampah
├── plastik
├── kertas
└── logam
```

---

### 9. Algorithm

1. Program dimulai.
2. Saldo nasabah diatur menjadi `0`.
3. Tentukan jenis sampah.
4. Tentukan berat sampah.
5. Tentukan harga sampah berdasarkan jenisnya.
6. Hitung hasil setoran dari harga dikalikan berat sampah.
7. Tambahkan hasil setoran ke saldo nasabah.
8. Tentukan jumlah saldo yang ingin ditarik.
9. Cek apakah jumlah penarikan kurang dari Rp10.000.
10. Jika kurang dari Rp10.000, penarikan ditolak dan saldo tetap.
11. Jika tidak, cek apakah jumlah penarikan lebih besar dari saldo.
12. Jika saldo tidak mencukupi, penarikan ditolak dan saldo tetap.
13. Jika saldo mencukupi, jumlah penarikan dikurangi dari saldo.
14. Tampilkan hasil setoran, jumlah penarikan, dan saldo akhir.
15. Program selesai.

---

### 10. Flowchart

```text
[ MULAI ]
     |
     v
[ Saldo = 0 ]
     |
     v
( Input Jenis Sampah & Berat )
     |
     v
[ Tentukan Harga Sampah ]
     |
     v
[ Hitung Hasil Setoran ]
     |
     v
[ Tambahkan Hasil Setoran ke Saldo ]
     |
     v
( Input Jumlah Penarikan )
     |
     v
[ Cek Penarikan >= Rp10.000
  dan Saldo Mencukupi ]
     |
     +---- ( Tidak ) ----> [ PENARIKAN GAGAL ]
     |                            |
     |                            v
     |                     [ Saldo Tetap ]
     |
     +---- ( Ya ) -------> [ Kurangi Saldo ]
                                  |
                                  v
                           [ Tampilkan Hasil ]
                                  |
                                  v
                             [ SELESAI ]
```

---

### 11. Pseudocode

```text
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
        Tampilkan "Gagal: minimal penarikan adalah Rp10000"
        RETURN saldo

    JIKA jumlah > saldo
        Tampilkan "Gagal: saldo tidak cukup"
        RETURN saldo

    RETURN saldo - jumlah
END FUNCTION


saldoNasabah = 0

jenisSampah = "plastik"
beratSampah = 4.5

hasilSetor = hitungSetoran(jenisSampah, beratSampah)

saldoNasabah = saldoNasabah + hasilSetor

jumlahTarik = 30000

saldoNasabah = prosesPenarikan(saldoNasabah, jumlahTarik)

Tampilkan jenis sampah
Tampilkan berat sampah
Tampilkan hasil setor
Tampilkan saldo nasabah
Tampilkan jumlah penarikan
Tampilkan saldo akhir

SELESAI
```

---

### Hasil Skenario Program

Pada contoh program yang digunakan:

```text
Jenis sampah : plastik
Berat        : 4.5 kg
Hasil setor  : Rp22500
Saldo        : Rp22500
Penarikan    : Rp30000
```

Karena jumlah penarikan sebesar Rp30.000 lebih besar daripada saldo Rp22.500, maka penarikan ditolak.

```text
Gagal: saldo tidak cukup
Saldo akhir: Rp22500
```
