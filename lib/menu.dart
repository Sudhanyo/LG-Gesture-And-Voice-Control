import 'package:flutter/material.dart';

/// The SettingsPage() class is used to display the Menu for the LG Gesture & Voice Control app through which,
/// Users can set up the app to connect with their LG rig.

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
    );
  }
}