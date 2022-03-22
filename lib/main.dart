import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    // final subtitles = ["i love pooria","pooria is thin","pooria is tall","pooria is good"];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          Card(
            child: ListTile(
              title: Text('Pooria'),
              leading: CircleAvatar(backgroundImage: AssetImage('asset/pooria2.jpg')),
              trailing: Icon(Icons.star),
              subtitle: Text('Pooria is a Developer'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Pooria'),
              leading: CircleAvatar(backgroundImage: AssetImage('asset/pooria.jpg')),
              trailing: Icon(Icons.star),
              subtitle: Text('Pooria is Smart'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Pooria'),
              leading: CircleAvatar(backgroundImage: AssetImage('asset/pooria1.jpg')),
              trailing: Icon(Icons.star),
              subtitle: Text('Pooria is a good boy'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Pooria'),
              leading: CircleAvatar(backgroundImage: AssetImage('asset/pooria3.jpg')),
              trailing: Icon(Icons.star),
              subtitle: Text('Pooria is thin'),
            ),
          ),
        ],
      ),
    );
  }
}
