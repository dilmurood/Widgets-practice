import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Practice',
      theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Color(0xffc1bfbf)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Widgets Practice'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GreetingWidget(greetingMessage: 'Hello, Dilmurod!'),
              SizedBox(height: 20),
              CounterWidget(),
              SizedBox(height: 20),
              Container(
                width: 300,
                height: 100,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'This is a container widget',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GreetingWidget extends StatelessWidget {
  final String greetingMessage;

  GreetingWidget({required this.greetingMessage});

  @override
  Widget build(BuildContext context) {
    return Text(
      greetingMessage,
      style: Theme.of(context).textTheme.displaySmall,
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Total Count:',
        ),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        SizedBox(
          width: 150,
          height: 50,
          child: ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('Count',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
