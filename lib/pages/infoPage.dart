import 'package:flutter/material.dart';
import 'package:pratice/pages/home.dart';

class InfoPage extends StatefulWidget {
    InfoPage({super.key});

  @override
  State<InfoPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<InfoPage> {
  @override
  bool showText = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World"),
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
            const Text("Info Page"),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
            }, 
            child: const Text("Home Page")),
            ElevatedButton(onPressed: (){
              setState(() {
                showText = !showText;
              });
            }, 
            child: showText ? const Text("Close Info") : const Text("Show Info")),
            if(showText) Container(
              width: 350,
              height: 400,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(top: 50),
              color: Colors.red,
              child: const Text(
                "This is some info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}

