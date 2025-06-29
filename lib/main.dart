import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Gallery')),
        body: GridView.builder(
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // รูปต่อแถว
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            // รายชื่อไฟล์ภาพ
            final imagePaths = [
              'assets/imgs/img1.jpg',
              'assets/imgs/img2.jpg',
              'assets/imgs/img3.jpg',
              'assets/imgs/img4.jpg',
              'assets/imgs/img5.jpeg',
              'assets/imgs/img6.jpg',
              'assets/imgs/img7.jpg',
              'assets/imgs/img8.jpg',
              'assets/imgs/img9.jpg',
              'assets/imgs/img10.jpg',
            ];

            return Card(
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
