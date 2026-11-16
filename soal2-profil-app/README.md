git log --oneline -5# Aplikasi Profil Mahasiswa Flutter

Aplikasi Profil Mahasiswa merupakan proyek Ujian Tengah Semester (UTS) mata kuliah Pemrograman Mobile yang dibuat menggunakan Flutter dan bahasa pemrograman Dart.

## 1. Identitas Mahasiswa

- **Nama:** Aditiya Surya Putra
- **NIM:** 1124160148
- **Kelas:** TI 24 M
- **Program Studi:** Teknik Informatika
- **Kampus:** Global Institute
- **Mata Kuliah:** Pemrograman Mobile

## 2. Fitur Aplikasi

Aplikasi ini memiliki beberapa fitur, yaitu:

1. **Halaman Profil**
   - Menampilkan foto profil mahasiswa.
   - Menampilkan nama lengkap dan bio.
   - Menampilkan informasi email.
   - Menampilkan nomor telepon.
   - Menampilkan alamat.

2. **Halaman Edit Profil**
   - Mengubah nama lengkap.
   - Mengubah email.
   - Mengubah nomor telepon.
   - Mengubah alamat.
   - Mengubah bio.
   - Menyimpan perubahan profil.

3. **Halaman Tentang Aplikasi**
   - Menampilkan informasi aplikasi.
   - Menampilkan versi aplikasi.
   - Menampilkan nama pembuat aplikasi.

4. **Dark Mode dan Light Mode**
   - Mengubah tampilan aplikasi menjadi mode gelap.
   - Mengubah tampilan aplikasi menjadi mode terang.

5. **Navigasi Antarhalaman**
   - Berpindah halaman menggunakan Navigator.
   - Kembali ke halaman sebelumnya.

## 3. Teknologi yang Digunakan

- Flutter
- Dart
- Visual Studio Code
- Git
- GitHub

## 4. Struktur Folder

```text
Soal2_UTS/
├── assets/
│   └── images/
│       └── IMG_1789231122788.jpg
├── lib/
│   ├── main.dart
│   ├── models/
│   │   └── profile.dart
│   ├── screens/
│   │   ├── profile_page.dart
│   │   ├── edit_profile_page.dart
│   │   └── about_page.dart
│   └── widgets/
│       └── info_tile.dart
├── screenshots/
│   ├── profil.png
│   ├── edit-profil.png
│   └── tentang-aplikasi.png
├── pubspec.yaml
└── README.md
```

## 5. Screenshot Aplikasi

### A. Halaman Profil

Halaman utama yang menampilkan foto, nama, bio, email, nomor telepon, dan alamat mahasiswa.

![Halaman Profil](C:\Users\Surya\Pictures\Screenshots\Tampilan_Profil.png)

### B. Halaman Edit Profil

Halaman untuk mengubah informasi profil mahasiswa melalui formulir edit profil.

![Halaman Edit Profil](C:\Users\Surya\Pictures\Screenshots\edit_profil.png)

### C. Halaman Tentang Aplikasi

Halaman yang menampilkan informasi aplikasi, versi aplikasi, dan nama pembuat.

![Halaman Tentang Aplikasi](C:\Users\Surya\Pictures\Screenshots\tentang_aplikasi.png)

## 6. Cara Menjalankan Aplikasi

Pastikan Flutter sudah terinstal di komputer.

**Langkah 1. Clone repository GitHub**

```bash
git clone LINK_REPOSITORY_GITHUB
```

**Langkah 2. Masuk ke folder project**

```bash
cd Soal2_UTS
```

**Langkah 3. Install dependencies**

```bash
flutter pub get
```

**Langkah 4. Jalankan aplikasi**

```bash
flutter run
```

Untuk menjalankan melalui Google Chrome:

```bash
flutter run -d chrome
```

## 7. Membuat APK Android

Gunakan perintah berikut:

```bash
flutter build apk --release
```

File APK dapat ditemukan di:

```text
build/app/outputs/flutter-apk/app-release.apk
```

APK diunggah melalui GitHub Releases dengan tag:

```text
v1.0.0
```

## 8. Repository GitHub

**Link Repository:** 

[Masukkan link repository GitHub di sini]

## 9. Video Presentasi YouTube

**Link Video Presentasi:**

[Masukkan link video YouTube di sini]

## 10. Penutup

Aplikasi Profil Mahasiswa ini dibuat sebagai tugas Ujian Tengah Semester mata kuliah Pemrograman Mobile. Melalui proyek ini, saya mempelajari pembuatan aplikasi menggunakan Flutter, pengelolaan data profil, navigasi antarhalaman, pengaturan tema, serta pembuatan tampilan aplikasi mobile.

---

**Dibuat oleh Aditiya Surya Putra**

Program Studi Teknik Informatika  
Global Institute  
Tahun 2026
