import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _colors = Color.fromARGB(255, 113, 93, 91);
  double _width = 100;
  double _height = 200;
  void changecolorandsize() {
    setState(() {
      _colors = Colors.green;
      _width = _width + 100;
      _height = _height + 100;
    });
  }

  void changecolorandsize1() {
    setState(() {
      _colors = Colors.blue;
      _width = _width - 250;
      _height = _height - 250;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          child: Text(
            'change',
            style: TextStyle(color: Colors.black),
          ),
          onPressed: changecolorandsize1,
        ),
      ),
      body: Center(
        child: AnimatedContainer(
          child: InkWell(
              child: Icon(Icons.record_voice_over), onTap: changecolorandsize),
          duration: Duration(seconds: 1),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _colors,
          ),
        ),
      ),
    );
  }
}
