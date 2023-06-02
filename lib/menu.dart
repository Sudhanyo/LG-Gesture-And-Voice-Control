import 'package:flutter/material.dart';

/// The SettingsPage() class is used to display the Menu for the LG Gesture & Voice Control app through which,
/// Users can set up the app to connect with their LG rig.

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _ipAddressController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _portNumberController = TextEditingController();
  TextEditingController _numberOfRigsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Enter Master ID',
                    hintText: 'Example: lg',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a valid Master ID';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _ipAddressController,
                  decoration: InputDecoration(
                    labelText: 'IP Address',
                    hintText: 'Example: 192.168.150.20',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a valid IP address';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Master Password',
                    hintText: 'Example: lg',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _portNumberController,
                  decoration: InputDecoration(
                    labelText: 'Port Number',
                    hintText: 'Example: 22',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a valid port number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _numberOfRigsController,
                  decoration: InputDecoration(
                    labelText: 'Number of Rigs',
                    hintText: 'Example: 4',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the valid number of rigs';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                ElevatedButton( 
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Perform the connection logic here
                      String username = _usernameController.text;
                      String ipAddress = _ipAddressController.text;
                      String password = _passwordController.text;
                      String portNumber = _portNumberController.text;
                      String numberOfRigs = _numberOfRigsController.text;

                      // Use the input values for connection
                      print('Connecting with:');
                      print('Username: $username');
                      print('IP Address: $ipAddress');
                      print('Password: $password');
                      print('Port Number: $portNumber');
                      print('Number of Rigs: $numberOfRigs');
                    }
                  },
                  child: Text('Connect'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
