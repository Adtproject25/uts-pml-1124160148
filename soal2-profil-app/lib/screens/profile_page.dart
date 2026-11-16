import 'package:flutter/material.dart';
import '../models/profile.dart';
import 'edit_profile_page.dart';
import 'about_page.dart';

class ProfilePage extends StatefulWidget {
  final Profile profile;

  const ProfilePage({
    super.key,
    required this.profile,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final profile = widget.profile;

    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FA),
      appBar: AppBar(
        title: const Text('Profil Saya'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 25),

            // Foto Profil
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage(
                'assets/images/IMG_1789231122788.jpg',
              ),
            ),

            const SizedBox(height: 15),

            Text(
              profile.name,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              profile.bio,
              style: const TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 30),

            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    infoItem(Icons.email, 'Email', profile.email),
                    const Divider(),
                    infoItem(Icons.phone, 'Telepon', profile.phone),
                    const Divider(),
                    infoItem(
                      Icons.location_on,
                      'Alamat',
                      profile.address,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          EditProfilePage(profile: profile),
                    ),
                  );
                  setState(() {});
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profil'),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.info_outline),
                label: const Text('Tentang Aplikasi'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget infoItem(IconData icon, String title, String value) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      subtitle: Text(value),
    );
  }
}
