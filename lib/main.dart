import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class GreetingWidget extends StatelessWidget {
  final String greetingMessage;

  GreetingWidget({required this.greetingMessage});

  @override
  Widget build(BuildContext context) {
    return Text(greetingMessage);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Widgets practice'),
        ),
        body: Center(
          child: GreetingWidget(greetingMessage: 'Hello, World!'),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
