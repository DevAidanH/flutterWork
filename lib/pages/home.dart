import 'package:flutter/material.dart';
import 'package:pratice/pages/about.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
        centerTitle: true,
        backgroundColor: Colors.red,
        titleTextStyle: const TextStyle(
          color: Colors.white, 
          fontSize: 32, 
          fontWeight: FontWeight.w900,
          ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            const   Text("Welcome"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const aboutPage()));
              }, 
              child: const Text("About Page"))
          ],
        ),
      ),
    );

  }
}