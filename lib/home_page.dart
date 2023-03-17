import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar flutter"),
        centerTitle: false,
        backgroundColor: Colors.teal,
        actions: [
          Icon(Icons.search),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.teal,
                  child: Center(
                    child: Text("Hello World"),
                  ),
                ),
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SecondPage();
                  },
                ),
              );
            },
            child: Text("Pindah Halaman"),
          )
        ],
      ),
    );
  }
}
