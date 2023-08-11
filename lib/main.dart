import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey),
      home: Scaffold(
        body: ListView(
          children: [appBar, user],
        ),
      ),
    );
  }
}

Widget appBar = const Row(
  children: [
    Expanded(
      flex: 4,
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Text(
          'Youssef'
          'Ben Attar',
          style: TextStyle(fontSize: 25),
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text("Let's Chat"),
          SizedBox(width: 20),
          Icon(Icons.list),
        ],
      ),
    ),
  ],
);

Widget user = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: _launchUrl3,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/X.jpg'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: _launchUrl2,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/github.jpg'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: _launchUrl1,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/linkdin.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi',
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
          Text(
            'Im',
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
          Text(
            'Youssef Ben Attar',
            style: TextStyle(fontSize: 50, color: Colors.red),
          ),
          AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText('AWESOME'),
              RotateAnimatedText('OPTIMISTIC'),
              RotateAnimatedText('DIFFERENT'),
            ],
          ),
        ],
      ),
      Image.asset('images/X.jpg')
    ],
  ),
);

Widget services = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Column(
      children: [
        const Text('As A Developer I Am Good Fit With Some Key Skills.'),
        const Text(
            'All Developers have good skills to make sure they satisfy their clients, As a developer, I am also specialized in a few Skills.'),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/github.jpg', width: 50),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/linkdin.jpg', width: 50),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/X.jpg', width: 50),
            )
          ],
        )
      ],
    ),
    const Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/skills/1.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/skills/2.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/skills/3.jpg'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/skills/4.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/skills/5.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/skills/6.jpg'),
              ),
            ),
          ],
        )
      ],
    )
  ],
);

Widget footer = Align(
  child: Container(
    color: Colors.red,
    height: 150,
    child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Text('kujyhtgf')]),
  ),
);

final Uri _url1 = Uri.parse('https://flutter.dev');
Future<void> _launchUrl1() async {
  if (!await launchUrl(_url1)) {
    throw Exception('Could not launch $_url1');
  }
}

final Uri _url2 = Uri.parse('https://flutter.dev');
Future<void> _launchUrl2() async {
  if (!await launchUrl(_url2)) {
    throw Exception('Could not launch $_url2');
  }
}

final Uri _url3 = Uri.parse('https://flutter.dev');
Future<void> _launchUrl3() async {
  if (!await launchUrl(_url3)) {
    throw Exception('Could not launch $_url3');
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(width: 20.0, height: 100.0),
            const Text(
              'Be',
              style: TextStyle(fontSize: 43.0),
            ),
            const SizedBox(width: 20.0, height: 100.0),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 40.0,
                fontFamily: 'Horizon',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText('AWESOME'),
                  RotateAnimatedText('OPTIMISTIC'),
                  RotateAnimatedText('DIFFERENT'),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
