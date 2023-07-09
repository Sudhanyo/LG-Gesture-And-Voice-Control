import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechScreen extends StatefulWidget {
  const SpeechScreen({Key? key}) : super(key: key);
  @override
  _SpeechScreenState createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {
  final Map<String, HighlightedWord> highlights = {
    'Move': HighlightedWord(
        onTap: () => print('Move'),
        textStyle: const TextStyle(fontSize: 24, color: Colors.green, fontWeight: FontWeight.w600)),
    'Zoom': HighlightedWord(
        onTap: () => print('Zoom'),
        textStyle: const TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.w600)),
    'Fly': HighlightedWord(
        onTap: () => print('Fly'),
        textStyle: const TextStyle(fontSize: 24, color: Colors.yellow, fontWeight: FontWeight.w600)),
    'Orbit': HighlightedWord(
        onTap: () => print('Orbit'),
        textStyle: const TextStyle(fontSize: 24, color: Colors.red, fontWeight: FontWeight.w600)),
    'North': HighlightedWord(
        onTap: () => print('North'),
        textStyle: const TextStyle(fontSize: 24, color: Colors.green, fontWeight: FontWeight.w600)),
    'South': HighlightedWord(
        onTap: () => print('South'),
        textStyle: const TextStyle(fontSize: 24, color: Colors.green, fontWeight: FontWeight.w600)),
    'East': HighlightedWord(
        onTap: () => print('East'),
        textStyle: const TextStyle(fontSize: 24, color: Colors.green, fontWeight: FontWeight.w600)),
    'West': HighlightedWord(
        onTap: () => print('West'),
        textStyle: const TextStyle(fontSize: 24, color: Colors.green, fontWeight: FontWeight.w600)),
    'Out': HighlightedWord(
        onTap: () => print('Out'),
        textStyle: const TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.w600)),
    'Earth': HighlightedWord(
        onTap: () => print('Earth'),
        textStyle: const TextStyle(fontSize: 24, color: Colors.orange, fontWeight: FontWeight.w600)),
    'Moon': HighlightedWord(
        onTap: () => print('Moon'),
        textStyle: const TextStyle(fontSize: 24, color: Colors.orange, fontWeight: FontWeight.w600)),
    'Planet': HighlightedWord(
        onTap: () => print('Planet'),
        textStyle: const TextStyle(fontSize: 24, color: Colors.orange, fontWeight: FontWeight.w600)),
  };

  final SpeechToText speechToText = SpeechToText();

  var text = "Hold The Button And Start Speaking";
  var isListening = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        endRadius: 75.0,
        animate: isListening,
        duration: Duration(milliseconds: 2000),
        glowColor: Colors.black,
        repeat: true,
        repeatPauseDuration: Duration(microseconds: 100),
        showTwoGlows: true,
        child: GestureDetector(
          onTapDown: (details) async {
            if (!isListening) {
              var available = await speechToText.initialize();
              if (available) {
                setState(() {
                  isListening = true;
                  speechToText.listen(
                    onResult: (result) {
                      setState(() {
                        text = result.recognizedWords;
                      });
                    },
                  );
                });
              }
            }
          },
          onTapUp: (details) {
            setState(() {
              isListening = false;
            });
            speechToText.stop();
          },
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 35,
            child: Icon(isListening ? Icons.mic : Icons.mic_none,
                color: Colors.white),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Voice Recognition Mode",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.7,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          margin: const EdgeInsets.only(bottom: 15),
          child: TextHighlight(
            text: text,
            words: highlights,
            textStyle: TextStyle(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
