import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
              'Hello, World!',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 20), // Add some space between the texts
            Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20), // Add some space before the image
            Image.network(
              'https://flutter.dev/images/flutter-logo-sharing.png',
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20), // Add some space before the button
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Button Pressed!')),
                );
              },
              style: ElevatedButton.styleFrom(
                 backgroundColor:Colors.green,
              ),
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
