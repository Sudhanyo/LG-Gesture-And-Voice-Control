
import 'package:flutter/material.dart';
import 'package:lg_gesture_and_voice_control/pages/help.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LG Gesture & Voice Control'),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return HelpPage();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.help))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.pushNamed(context, '/settings');
        },
        child: const Icon(Icons.menu),
      ),

      /// Contains the Body with the eleveated Buttons for Camera and Voice Access.

      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.all(20.0),
                  minimumSize: const Size(350.0, 150.0),
                ),
                onPressed: () {},
                child: const Text('Camera'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.all(20.0),
                  minimumSize: const Size(350.0, 150.0),
                ),
                onPressed: () {},
                child: const Text('Voice'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}