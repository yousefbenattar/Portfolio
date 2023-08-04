import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor:Colors.blue),
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
             title:const Row(children: [
              Text('Home'),
              Text('Call Me'),
              Text('Contact Me'),
              Text('Download Cv'),
              Text("Let's Talk"),
             ],),
             
            ),
            
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
