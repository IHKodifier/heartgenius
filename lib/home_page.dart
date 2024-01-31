import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:heartgenius/shared/chat_assistant_avatr.dart';
import 'package:heartgenius/shared/feature_box.dart';
import 'package:heartgenius/shared/logo.dart';
import 'package:heartgenius/shared/pallete.dart';
import 'package:heartgenius/shared/welcome-box.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Logo(),
      ),
      drawer: const Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //Stack
            const ChatAssistantAvatar(),

            //WelcomeBox
            const WelcomeBox(),

            //suggestions
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Text(
                'Hera are a few features',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),

            //features list
            const FeatureBox(
              color: Pallete.firstSuggestionBoxColor,
              header: 'Chat GPT',
              description: 'I am an AI Bot and I can do multiple wonders for you.Your imagination  is the only limit.',
            ),

            const FeatureBox(
              color: Pallete.secondSuggestionBoxColor,
              header: 'Image Generator',
              description:
                  'with a simple prompt, I can generate PhotoRealistic images for you.',
            ),

            const FeatureBox(
              color: Pallete.firstSuggestionBoxColor,
              header: 'Business Insights & Analytics',
              description: 'Give me a pdf or an excel, ask me any question about it and I shall be happy to answer', 
            ),
          ],
        ),
      ),
      floatingActionButton: SlideInLeft(
        delay: const Duration(milliseconds: 150),
        duration: const Duration(milliseconds: 800),
        from: 300,
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
