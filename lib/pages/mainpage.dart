import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LG Gesture & Voice Control'),
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
                  padding: const EdgeInsets.all(20.0),
                  minimumSize: const Size(350.0, 150.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '');
                },
                child: const Text('Camera'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.all(20.0),
                  minimumSize: const Size(350.0, 150.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/voice');
                },
                child: const Text('Voice'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: ExpandableFloatingActionButton(),
    );
  }
}

class ExpandableFloatingActionButton extends StatefulWidget {
  @override
  _ExpandableFloatingActionButtonState createState() =>
      _ExpandableFloatingActionButtonState();
}

class _ExpandableFloatingActionButtonState
    extends State<ExpandableFloatingActionButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _expandAnimation;
  bool _isOpen = false;

  List<String> fabLabels = [
    'Settings',
    'About',
    'Utilities',
    'Help',
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _expandAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    setState(() {
      _isOpen = !_isOpen;
      if (_isOpen) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (_isOpen) ...[
          const SizedBox(height: 9),
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
            
            backgroundColor: Colors.black,
            heroTag: 'settings',
            child: const Icon(Icons.settings),
            elevation: 6, // Remove elevation for expanding buttons
            tooltip: fabLabels[0], // Add tooltip/label
          ),
          const SizedBox(height: 9),
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            backgroundColor: Colors.black,
            heroTag: 'about',
            child: const Icon(Icons.info),
            elevation: 6, // Remove elevation for expanding buttons
            tooltip: fabLabels[1], // Add tooltip/label
          ),
          const SizedBox(height: 9),
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/utilities');
            },
            backgroundColor: Colors.black,
            heroTag: 'utilities',
            child: const Icon(Icons.sort),
            elevation: 6, // Remove elevation for expanding buttons
            tooltip: fabLabels[2], // Add tooltip/label
          ),
          const SizedBox(height: 9),
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/help');
            },
            backgroundColor: Colors.black,
            heroTag: 'help',
            child: const Icon(Icons.help),
            elevation: 6, // Remove elevation for expanding buttons
            tooltip: fabLabels[3], // Add tooltip/label
          ),
        ],
        const SizedBox(height: 9),
        FloatingActionButton(
          onPressed: _toggleExpanded,
          backgroundColor: Colors.black,
          heroTag: 'expand',
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _expandAnimation,
          ),
          tooltip: _isOpen ? 'Close' : 'Expand', // Add tooltip/label
        ),
      ],
    );
  }
}
