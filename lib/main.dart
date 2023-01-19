import 'package:demo_app/screens/album.dart';
import 'package:demo_app/screens/full_photo.dart';
import 'package:demo_app/screens/login_screen.dart';
import 'package:demo_app/screens/photos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        Albums.id: (context) => const Albums(),
        PhotosOfAlbums.id: (context) => const PhotosOfAlbums(),
        FullPhotos.id: (context) => const FullPhotos(),
      },
      initialRoute: LoginScreen.id,
    );
  }
}
