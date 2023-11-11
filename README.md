# Peminjaman Peralatan Outdoor

## Latar Belakang

Repositori ini berisi skema dan kode SQL Sistem Manajemen Basis Data Peminjaman Peralatan Outdoor. Dikarenakan proses peminjaman masih manual, maka bagaimana caranya agar bisa melakukan peminjaman secara online dan yang berkepentingan cuma datang untuk mengambil dan mengembalikan barang yang disewa saja.

## Tujuan

Membuat sistem peminjaman agar mudah diakses dimanapun dan fleksibel. Pemilik sewa juga dapat mengelola barang yang sedang disewa, sisa stok dan barang yang rusak secara fleksibel.

## Requirements

### RDBMS

Database yang digunakan kali ini adalah MySQL. MySQL adalah sebuah sistem manajemen basis data relasional (RDBMS) yang sangat populer dan sering digunakan dalam pengembangan aplikasi web. MySQL dapat digunakan untuk menyimpan dan mengelola data dalam berbagai jenis aplikasi, mulai dari aplikasi kecil hingga aplikasi skala besar. MySQL juga mendukung banyak fitur seperti transaksi, indeks, dan keamanan data.

Referensi: [Link Download MySQL](https://www.mysql.com/downloads/)

### IDE

Untuk aplikasi editor menggunakan MySQL Workbench, dimana ini biasanya bundle ketika installasi MySQL. MySQL Workbench adalah aplikasi editor visual yang digunakan untuk mengelola dan mengelola database MySQL. Dengan MySQL Workbench, Anda dapat membuat, mengedit, dan menghapus database, tabel, dan kolom, serta menjalankan query SQL dan melihat hasilnya dalam format yang mudah dibaca. MySQL Workbench juga menyediakan fitur untuk membangun model database dan menghasilkan kode SQL dari model tersebut.

## Entitas - Tabel

> Barang

Entitas ini mewakili barang yang disewakan oleh pemilik sewa. Entitas ini dapat mencakup informasi seperti nama barang, harga sewa, dan stok.

> Kategori

Entitas ini mewakili kategori atau pengelompokan yang mungkin dimiliki oleh suatu produk. Misalnya, "Camping" atau "Masak".

> Merek

Entitas ini mewakili merek atau produsen suatu produk. Hal ini dapat mencakup informasi nama merek.

> Petugas

Entitas ini mewakili karyawan atau anggota staf persewaan. Hal ini dapat mencakup informasi seperti nama, rincian kontak, dan lain sebagainya.

> Pelanggan

Entitas ini mewakili pelanggan atau klien yang akan menyewa barang. Entitas ini dapat mencakup informasi seperti nama, detail kontak, dan identitas lain.

> Transaksi

Entitas ini mewakili transaksi yang terjadi antara penyewa dan pelanggan. Ini dapat mencakup informasi seperti tanggal transaksi, pelanggan yang terlibat, dan jumlah total yang dibayarkan.

> Detail Transaksi

Entitas ini merepresentasikan detail transaksi tertentu, seperti produk yang dibeli dan jumlahnya.

> Pembayaran

Entitas ini merepresentasikan pembayaran yang dilakukan oleh pelanggan untuk suatu transaksi. Entitas ini dapat mencakup informasi seperti metode pembayaran yang digunakan dan rincian pembayaran yang relevan.

> Pengembalian

Pengembalian: Entitas ini mewakili pengembalian yang dilakukan oleh pelanggan untuk satu peminjaman. Entitas ini dapat mencakup detail dari informasi peminjaman dan informasi transaksi.

## Instruksi Penggunaan

Jalankan file `DDL.sql` untuk membuat inisiasi database serta membuat tabel.

Jalankan file `DML.sql` untuk memasukkan data sample pada database.

Gunakan perintah berikut untuk menghapus database dari server:

```sql
drop database db_sewa_barang_revisi;
```

## Catatan Penting

Anggota Kelompok:

- Adam Fathurrohman Arya Bakhti
- Laely Isna Maulidia
- Aprianda Alif Budiman
- Nur Arifin

Proyek ini masih dalam tahap development, kesalahan mungkin masih banyak terjadi.

Hubungi kami jika Anda ingin memberikan saran/kritik ke `arifin.ts@student.uhb.ac.id`.

## License

Repositori ini dibawah License [MIT](LICENSE).

Silakan merujuk ke file LICENSE untuk informasi lebih lanjut mengenai hak cipta dan lisensi penggunaan.
