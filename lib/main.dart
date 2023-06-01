import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

/// First Basic Stateful Widget To Initialize when the application is opened.
/// Calls the FirstPage() class which contains the UI for accessing the application including the Camera, Voice, Menu and Settings.

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

/// The FirstPage() class is an interactive Stateful Widget that contains the UI for the LG Gesture & Control App.
/// The First page cotains the elevated buttons for accessing the Camera and Voice.
/// The Floating Action button is used to route to the MenuPage() to display the Menu for the app.
/// The IconButton() on the AppBar() is used to access the HelpPage() to display various content User understanding.

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
                      return const HelpPage();
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
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const SettingsPage();
              },
            ),
          );
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

/// The HelpPage() class contains the ListView() for the various commands which users can use when interacting with the LG Gesture & Control App.
/// It also contains an Image.asset to diplay the Liquid Galaxy logo at the bottom of the screen.

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView(
              children: basicTiles.map(buildTile).toList(),
            ),
          ),
          Image.asset(
            'images/liquidgalaxy.png',
            width: 100,
            height: 100,
          )
        ],
      ),
    );
  }

  /// The buildTile widget is a custom widget which is used to convert the BasicTile class into a viewable List in the HelpPage().
  /// The if-else checks whether the tile is a heading like "Voice Commands" or a subheading like "Move North" and,
  /// either adds a leading icon if a heading or a padding in case of a subheading.

  Widget buildTile(BasicTile tile) {
    if (tile.tiles.isEmpty) {
      return ListTile(
        contentPadding: const EdgeInsets.only(left: 50.0),
        title: Text(tile.title),
      );
    } else {
      return ExpansionTile(
        leading: const Icon(Icons.add_circle_outline),
        title: Text(tile.title),
        children: tile.tiles.map((tile) => buildTile(tile)).toList(),
      );
    }
  }
}

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

/// The BasicTile() class is a custom class which is used to display the various commands possible in the LG Gesture & Voice App.
/// It takes all the available commands and coverts it into a tile class which is then converted into ListView at the HelpPage() class.

class BasicTile {
  final String title;
  final List<BasicTile> tiles;

  const BasicTile({
    required this.title,
    this.tiles = const [],
  });
}

final basicTiles = <BasicTile>[
  const BasicTile(
    title: 'Voice Commands',
    tiles: [
      BasicTile(title: 'Move North'),
      BasicTile(title: 'Move Sound'),
      BasicTile(title: 'Move East'),
      BasicTile(title: 'Move West'),
      BasicTile(title: 'Zoom In'),
      BasicTile(title: 'Zoom Out'),
      BasicTile(title: 'Stop'),
      BasicTile(title: 'Fly To [Location]'),
      BasicTile(title: 'Planet [Name]'),
      BasicTile(title: 'Orbit'),
    ],
  ),
  const BasicTile(
    title: 'Hand Commands',
    tiles: [
      BasicTile(title: 'Point Up'),
      BasicTile(title: 'Point Down'),
      BasicTile(title: 'Point Right'),
      BasicTile(title: 'Point Left'),
      BasicTile(title: 'Pinch In'),
      BasicTile(title: 'Pinch Out'),
      BasicTile(title: 'Spread Fingers'),
    ],
  ),
  const BasicTile(
    title: 'Pose Commands',
    tiles: [
      BasicTile(title: 'Hand Front'),
      BasicTile(title: 'Hand Back'),
      BasicTile(title: 'Hand Right'),
      BasicTile(title: 'Hand Left'),
    ],
  ),
  const BasicTile(
    title: 'Documentation',
    tiles: [
      BasicTile(
          title:
              'Find Official  Doumentation Of The Project At www.liquidgalaxy.eu')
    ],
  )
];
