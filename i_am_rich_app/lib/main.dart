import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueGrey[900],
          title: const Center(
            child: Text(
              'I Am rich',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),

        ),
        backgroundColor: Colors.blueGrey,
        body: const Center(
          child: Image(
            image: AssetImage('Images/image1.jpg'),
          ),
        ),
      ),
    );
  }
}
