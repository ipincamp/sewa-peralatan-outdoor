-- Data Definition Language (DDL)
CREATE DATABASE db_sewa_barang_revisi;
USE db_sewa_barang_revisi;

CREATE TABLE kategori (
    id_kategori INT PRIMARY KEY AUTO_INCREMENT,
    nama_kategori VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE merek (
    id_merek INT PRIMARY KEY AUTO_INCREMENT,
    nama_merek VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE pembayaran (
    id_pembayaran INT PRIMARY KEY AUTO_INCREMENT,
    harus_bayar INT NOT NULL,
    tunai_bayar INT NOT NULL,
    kembalian INT DEFAULT 0,
    status_pembayaran ENUM('belum', 'sudah') NOT NULL
);

CREATE TABLE barang (
    id_barang INT PRIMARY KEY AUTO_INCREMENT,
    nama_barang VARCHAR(30) NOT NULL,
    harga_sewa INT NOT NULL,
    stok INT NOT NULL,
    kategori_id INT,
    merek_id INT,
    FOREIGN KEY (kategori_id)
        REFERENCES kategori (id_kategori),
    FOREIGN KEY (merek_id)
        REFERENCES merek (id_merek)
);

CREATE TABLE petugas (
    id_petugas INT PRIMARY KEY AUTO_INCREMENT,
    nama_petugas VARCHAR(50) NOT NULL,
    email_petugas VARCHAR(255) UNIQUE NOT NULL,
    jenis_kelamin_petugas ENUM('F', 'M') NOT NULL,
    nomor_hp_petugas VARCHAR(13) NOT NULL
);

CREATE TABLE pelanggan (
    id_pelanggan INT PRIMARY KEY AUTO_INCREMENT,
    nama_pelanggan VARCHAR(50) NOT NULL,
    email_pelanggan VARCHAR(255) UNIQUE NOT NULL,
    jenis_kelamin_pelanggan ENUM('M', 'F') NOT NULL,
    alamat_pelanggan VARCHAR(255) NOT NULL,
    nomor_hp_pelanggan BIGINT(13) NOT NULL,
    nomor_ktp_pelanggan BIGINT(16) NOT NULL
);

CREATE TABLE transaksi (
    id_transaksi INT PRIMARY KEY AUTO_INCREMENT,
    tanggal_sewa DATETIME DEFAULT now(),
    durasi_sewa INT NOT NULL DEFAULT 1,
    total_harga INT NOT NULL DEFAULT 0,
    status_transaksi ENUM('selesai', 'dibatalkan', 'menunggu_pembayaran') NOT NULL,
    pembayaran_id INT,
    petugas_id INT,
    pelanggan_id INT,
    FOREIGN KEY (pembayaran_id)
        REFERENCES pembayaran (id_pembayaran),
    FOREIGN KEY (petugas_id)
        REFERENCES petugas (id_petugas),
    FOREIGN KEY (pelanggan_id)
        REFERENCES pelanggan (id_pelanggan)
);

CREATE TABLE detail_transaksi (
    id_detail_transaksi INT PRIMARY KEY AUTO_INCREMENT,
    jumlah_barang INT DEFAULT 1,
    sub_total_harga INT NOT NULL,
    barang_id INT,
    transaksi_id INT,
    FOREIGN KEY (barang_id)
        REFERENCES barang (id_barang),
    FOREIGN KEY (transaksi_id)
        REFERENCES transaksi (id_transaksi)
);

CREATE TABLE pengembalian (
    id_pengembalian INT PRIMARY KEY AUTO_INCREMENT,
    tanggal_kembali DATETIME DEFAULT now(),
    keterlambatan INT DEFAULT 0,
    total_denda INT DEFAULT 0,
    status_pengembalian ENUM('sudah', 'belum'),
    transaksi_id INT,
    petugas_id INT,
    pelanggan_id INT,
    FOREIGN KEY (transaksi_id)
        REFERENCES transaksi (id_transaksi),
    FOREIGN KEY (petugas_id)
        REFERENCES petugas (id_petugas),
    FOREIGN KEY (pelanggan_id)
        REFERENCES pelanggan (id_pelanggan)
);
