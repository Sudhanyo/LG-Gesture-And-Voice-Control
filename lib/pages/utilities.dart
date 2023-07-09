import 'package:flutter/material.dart';

class UtilPage extends StatefulWidget {
  const UtilPage({Key? key}) : super(key: key);

  @override
  State<UtilPage> createState() => _UtilPageState();
}

class _UtilPageState extends State<UtilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Utilities'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  
                  minimumSize: const Size(300.0, 50.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '');
                },
                child: const Text('Shutdown LG'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  
                  minimumSize: const Size(300.0, 50.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/voice');
                },
                child: const Text('Relaunch LG'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  
                  minimumSize: const Size(300.0, 50.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/voice');
                },
                child: const Text('Clean Logos'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: const Size(300.0, 50.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/voice');
                },
                child: const Text('Reboot LG'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}