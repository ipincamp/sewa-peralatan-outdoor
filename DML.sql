-- Data Manipulation Language (DML)
INSERT INTO kategori (nama_kategori) VALUES
('Camping'),
('Masak'),
('Kesehatan'),
('Pencahayaan'),
('Transportasi');


INSERT INTO merek (nama_merek) VALUES
('Eiger'),
('Consina'),
('Arei'),
('Avtech'),
('Cartenz');


INSERT INTO barang (nama_barang, harga_sewa, stok, kategori_id, merek_id) VALUES
('Tenda Kapasitas 4', 40000, 20, 1, 2),
('Tas Carrier', 23000, 10, 1, 3),
('Cooking Set DS200', 10000, 30, 2, 4),
('Kompor Portable', 25000, 15, 2, 3),
('Sleeping Bag', 10000, 30, 1, 5),
('Sepatu', 20000, 10, 3, 1),
('Trekking Pole', 5000, 30, 1, 3),
('Jaket', 35000, 5, 3, 5),
('Flysheet', 10000, 10, 1, 5),
('Matras', 5000, 50, 1, 2);


INSERT INTO petugas (nama_petugas, email_petugas, jenis_kelamin_petugas, nomor_hp_petugas) VALUES
('Budi Santoso', 'budi.santoso@kampus.id', 'M', 081234567890),
('Siti Nurhaliza', 'siti.nurhaliza@kampus.id', 'F', 081234567891),
('Rian Hartanto', 'rian.hartanto@kampus.id', 'M', 082173649203),
('Puan Mahalini', 'puan.mahalini@kampus.id', 'F', 082569982920),
('Joko Julian', 'joko.julian@kampus.id', 'M', 081762581975);


INSERT INTO pelanggan (nama_pelanggan, email_pelanggan, alamat_pelanggan, jenis_kelamin_pelanggan, nomor_hp_pelanggan, nomor_ktp_pelanggan) VALUES
('Slamet', 'slamet@uhb.id', 'Jalan Kenangan No. 1', 'M', 082617348372, 3203041990123456),
('Bagas', 'bagas@uhb.id', 'Jalan Pesugihan No. 3', 'M', 086672683910, 7105071987654321),
('Tarno', 'tarno@uhb.id', 'Jalan Soekarno No. 1', 'M', 085162541324, 1206092001234567),
('Sarah', 'sarah@uhb.id', 'Jalan Panjaitan No. 29', 'F', 086786786789, 8108101976543210),
('Siti', 'siti@uhb.id', 'Jalan Merdeka No. 10', 'F', 082617849908, 2510111987654321);


INSERT INTO pembayaran (harus_bayar, tunai_bayar, kembalian, status_pembayaran) VALUES
(80000, 100000, 20000, 'sudah'),
(30000, 30000, 0, 'belum'),
(25000, 30000, 5000, 'sudah'),
(10000, 10000, 0, 'sudah'),
(15000, 20000, 5000, 'sudah'),
(20000, 20000, 0, 'sudah'),
(15000, 15000, 0, 'sudah'),
(20000, 20000, 0, 'belum'),
(70000, 70000, 0, 'sudah'),
(46000, 50000, 4000, 'sudah'),
(50000, 50000, 0, 'belum');


INSERT INTO transaksi (tanggal_sewa, durasi_sewa, total_harga, status_transaksi, pembayaran_id, petugas_id, pelanggan_id) VALUES
('2023-09-28 10:15:30', 3, 10000, 'selesai', 1, 1, 2),
('2023-09-28 12:30:45', 1, 10000, 'menunggu_pembayaran', 2, 2, 5),
('2023-09-29 08:20:15', 2, 10000, 'selesai', 3, 1, 2),
('2023-09-29 14:50:05', 1, 10000, 'selesai', 4, 2, 3),
('2023-09-30 09:45:30', 1, 10000, 'selesai', 5, 1, 2),
('2023-09-30 11:55:10', 4, 10000, 'selesai', 6, 2, 4),
('2023-10-01 13:25:40', 3, 10000, 'selesai', 7, 1, 2),
('2023-10-01 15:40:20', 2, 10000, 'menunggu_pembayaran', 8, 2, 5),
('2023-10-02 07:10:55', 3, 10000, 'selesai', 9, 1, 1),
('2023-10-02 16:00:00', 1, 10000, 'selesai', 10, 2, 1),
('2023-10-02 18:00:00', 1, 10000, 'dibatalkan', 11, 2, 1);


INSERT INTO detail_transaksi (jumlah_barang, sub_total_harga, barang_id, transaksi_id) VALUES
(1, 10000, 1, 1),
(1, 10000, 2, 2),
(1, 10000, 3, 3),
(1, 10000, 4, 4),
(1, 10000, 5, 5),
(1, 10000, 6, 6),
(1, 10000, 7, 7),
(1, 10000, 8, 8),
(1, 10000, 9, 9),
(1, 10000, 10, 10);


INSERT INTO pengembalian (tanggal_kembali, keterlambatan, total_denda, status_pengembalian, transaksi_id, petugas_id, pelanggan_id) VALUES
('2023-09-30 11:30:00', 1, 10000, 'sudah', 1, 1, 2),
('2023-09-29 14:55:00', 0, 0, 'belum', 2, 2, 5),
('2023-09-30 10:00:00', 1, 10000, 'sudah', 3, 1, 2),
('2023-10-01 14:00:00', 0, 0, 'sudah', 4, 2, 3),
('2023-10-01 16:45:00', 0, 0, 'sudah', 5, 1, 2),
('2023-10-02 12:20:00', 1, 10000, 'sudah', 6, 2, 4),
('2023-10-02 17:30:00', 2, 20000, 'sudah', 7, 1, 2),
('2023-10-03 10:10:00', 0, 0, 'belum', 8, 2, 5),
('2023-10-03 11:45:00', 1, 10000, 'sudah', 9, 1, 1),
('2023-10-03 17:15:00', 0, 0, 'sudah', 10, 2, 1);
