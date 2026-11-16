import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
 
          const Center(
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 65,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 15),

          const Center(
            child: Text(
              'Aditiya Surya Putra',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const Center(
            child: Text(
              'Mahasiswa Teknik Informatika',
              style: TextStyle(color: Colors.grey),
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'Tentang Saya',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            'Saya adalah mahasiswa Teknik Informatika di Global Institute. '
            'Saya memiliki ketertarikan di bidang teknologi, desain, '
            'fotografi, dan pengembangan aplikasi. '
            'Saya senang mempelajari hal baru serta mengembangkan '
            'kemampuan di bidang teknologi dan multimedia.',
            textAlign: TextAlign.justify,
          ),

          const SizedBox(height: 25),

          const Text(
            'Keahlian dan Hobi',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          _buildItem(
            Icons.camera_alt,
            'Fotografi',
            'Mengambil dan mengabadikan momen melalui kamera.',
          ),

          _buildItem(
            Icons.video_library,
            'Video Editing',
            'Mengedit video menggunakan Adobe Premiere, CapCut, dan aplikasi lainnya.',
          ),

          _buildItem(
            Icons.brush,
            'Desain Grafis',
            'Membuat desain menggunakan Photoshop dan Canva.',
          ),

          _buildItem(
            Icons.computer,
            'Pemrograman',
            'Mempelajari pengembangan aplikasi menggunakan Flutter.',
          ),

          const SizedBox(height: 25),
          const Text(
            'Riwayat Pendidikan',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          _buildItem(
            Icons.school,
            'SMAN 5 Kabupaten Tangerang',
            'Lulus tahun 2024.',
          ),

          _buildItem(
            Icons.account_balance,
            'Global Institute',
            'Program Studi Teknik Informatika (2024 - Sekarang).',
          ),

          const SizedBox(height: 25),
          const Center(
            child: Text(
              '© 2026 Aditiya Surya Putra',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}
