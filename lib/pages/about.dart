import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPage();
}

class _AboutPage extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About'),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/splash.png',
                      width: double.infinity,
                      height: 500,
                    ),
                  ],
                ),
              ),

              //brief summary
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'The LG Gesture and Voice Control Project aims to improve the control of the Liquid Galaxy Rig by providing a more comprehensive solution using voice commands, body poses, and hand gestures. The project will consist of two parts: the LG Gesture and Voice Control App and the LG Gesture and Voice Control Library. The core technology used to make the above would be Flutter (Dart), and incorporate various APIs, especially ML Kit and Geocoding. The app will offer a more intuitive approach for users to interact with the Liquid Galaxy setup, making it simpler to explore and navigate. Users will be able to control the Liquid Galaxy without physically touching any devices, increasing the immersive experience. The LG Gesture and Voice Control Library will allow for the implementation of the apps key functionalities in other Liquid Galaxy apps and projects, providing a wider range of situations for implementation. One potential application for the library is incorporating it into the previously built Liquid Galaxy Controller to provide additional functionality for voice and gesture control, enhancing the user experience.',
                    style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15)
                  )),
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Developers:',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(height: 8),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text(
                            'Mentors: Andreuibanez, Gabry, Merul Dhiman, Alejandro Illán Marcos',
                            style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15)),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text(
                            'Contributor & Developer: Sudhanyo Chatterjee',
                            style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15)),
                      ),
                    ],
                  )),
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Reach Out:',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(height: 8),
                      ListTile(
                        leading: Icon(Icons.link),
                        title: Text('Liquid Galaxy'),
                        onTap: () => launchUrl(
                            Uri.parse('https://www.liquidgalaxy.eu/')),
                      ),
                      ListTile(
                        leading: Icon(Icons.link),
                        title: Text('LinkedIn'),
                        onTap: () => launchUrl(Uri.parse(
                            'https://www.linkedin.com/in/sudhanyo-chatterjee/')),
                      ),
                      ListTile(
                        leading: Icon(Icons.link),
                        title: Text('GitHub'),
                        onTap: () => launchUrl(Uri.parse(
                            'https://github.com/Sudhanyo/LG-Gesture-And-Voice-Control')),
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
