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
Program dibagi menjadi beberapa bagian berdasarkan proses yang dilakukan. Setiap bagian memiliki tugas masing-masing seperti menentukan harga, menghitung hasil setoran, dan memproses penarikan saldo.

