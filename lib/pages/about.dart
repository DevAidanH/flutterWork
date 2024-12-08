import 'package:flutter/material.dart';
import 'package:pratice/pages/home.dart';

class aboutPage extends StatelessWidget {
  const aboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            const Text("About Page"),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
              }, 
              child:  const Text("Home Page")
            )
          ],
        )
      ),
    );
  }
}