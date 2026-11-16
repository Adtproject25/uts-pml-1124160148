import 'package:flutter/material.dart';
import '../models/profile.dart';

class EditProfilePage extends StatefulWidget {
  final Profile profile;

  const EditProfilePage({
    super.key,
    required this.profile,
  });

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController addressController;
  late TextEditingController bioController;

  @override
  void initState() {
    super.initState();

    nameController =
        TextEditingController(text: widget.profile.name);
    emailController =
        TextEditingController(text: widget.profile.email);
    phoneController =
        TextEditingController(text: widget.profile.phone);
    addressController =
        TextEditingController(text: widget.profile.address);
    bioController =
        TextEditingController(text: widget.profile.bio);
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    addressController.dispose();
    bioController.dispose();

    super.dispose();
  }

  Widget inputField(
    String label,
    TextEditingController controller,
    IconData icon,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, color: Colors.blue),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  void saveProfile() {
    if (nameController.text.trim().isEmpty ||
        emailController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Nama dan email wajib diisi!'),
        ),
      );
      return;
    }

    setState(() {
      widget.profile.name = nameController.text.trim();
      widget.profile.email = emailController.text.trim();
      widget.profile.phone = phoneController.text.trim();
      widget.profile.address = addressController.text.trim();
      widget.profile.bio = bioController.text.trim();
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Profil berhasil diperbarui!'),
        backgroundColor: Colors.green,
      ),
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FA),
      appBar: AppBar(
        title: const Text('Edit Profil'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 55,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 25),

            inputField(
              'Nama Lengkap',
              nameController,
              Icons.person,
            ),

            inputField(
              'Email',
              emailController,
              Icons.email,
            ),

            inputField(
              'Nomor Telepon',
              phoneController,
              Icons.phone,
            ),

            inputField(
              'Alamat',
              addressController,
              Icons.location_on,
            ),

            inputField(
              'Bio',
              bioController,
              Icons.description,
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: saveProfile,
                icon: const Icon(Icons.save),
                label: const Text('Simpan Perubahan'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
