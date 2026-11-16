import 'package:flutter/material.dart';
import 'models/profile.dart';
import 'screens/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Profile profile = Profile(
    name: 'Aditiya Surya Putra',
    email: 'aditiyasuryaputra75@gmail.com',
    phone: '081313619268',
    address: 'Tangerang, Indonesia',
    bio: 'Mahasiswa Teknik Informatika',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Profil',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: ProfilePage(profile: profile),
    );
  }
}
