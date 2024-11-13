import 'package:flutter/material.dart';
import 'package:tryapp2/about_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: HomeScreen(),
      routes: {
        '/about': (context) => AboutPage(), // tambahkan route untuk AboutPage
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/about'); // navigasi ke AboutPage
          },
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange, // Warna latar belakang tombol oranye
          ),
          child: Text('Go to About Page',
          style: TextStyle(
              fontFamily: 'Lora', // Ganti dengan font yang kamu inginkan
              fontSize: 16, // Ukuran font
              color: Colors.white, // Warna font
              fontWeight: FontWeight.bold,),
          ),
        ),
      ),
    );
  }
}
