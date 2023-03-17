import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://i.pinimg.com/736x/b8/59/fb/b859fbbcb7e02fbf9f71c1b4a3d065d7.jpg",
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            Image.asset("assets/kl.jpeg"),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali Ke Halaman Pertama"),
            ),
          ],
        ),
      ),
    );
  }
}
