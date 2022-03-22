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
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
      ),
      home: const MyHomePage(title: 'Listtile'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          Card(
            child: ListTile(
              title: Text(
                'Pooria',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              leading: CircleAvatar(
                  backgroundImage: AssetImage('asset/pooria2.jpg'),radius: 40),
              trailing: Icon(Icons.star),
              subtitle: Text('Pooria is a Developer',style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'Saeed',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              leading:
                  CircleAvatar(backgroundImage: AssetImage('asset/pooria.jpg'),radius: 40),
              trailing: Icon(Icons.star),
              subtitle: Text('Pooria is Smart',style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              )),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'Sadeq',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              leading: CircleAvatar(
                  backgroundImage: AssetImage('asset/pooria1.jpg'),radius: 40),
              trailing: Icon(Icons.star),
              subtitle: Text('Pooria is a good boy',style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              )),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'Alireza',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              leading: CircleAvatar(
                  backgroundImage: AssetImage('asset/pooria3.jpg'),radius: 40),
              trailing: Icon(Icons.star),
              subtitle: Text('Pooria is thin',style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
