import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

String title = 'Love for Werka';
String heartPath = 'images/flamenco-heart.png';
String boomPath = 'images/flamenco-boom.png';
String allLovePath = 'images/flamenco-all-you-need-is-love.png';
int heartMulti = 10;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Love',
      ),
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    if (_counter > 23) {
      _counter = 0;
    }

    setState(() {
      _counter++;
    });
  }

  String blowHeart() {
    if (_counter > 20 && _counter < 23) {
      return boomPath;
    }
    if (_counter >= 23) {
      return allLovePath;
    }

    return heartPath;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(fontSize: 30)),
        backgroundColor: Colors.red[900],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage(blowHeart()),
              height: 200.0 + (heartMulti * _counter),
              width: 200.0 + (heartMulti * _counter),
              color: Colors.red[900],
            ),
            Text(
              'Love from Stah',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[900]),
            ),
            Text('$_counter',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900])),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
