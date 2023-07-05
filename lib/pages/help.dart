
import 'package:flutter/material.dart';

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
            'assets/images/liquidgalaxy.png',
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
