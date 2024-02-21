import 'package:flutter/material.dart';

import 'mydrawer.dart';

void main() {
  runApp(MonApp());
}

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MonApp",
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Bonjour M1 DevOps !",
              style: TextStyle(
                fontSize: 40,
                color: Colors.pink,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            FilledButton(
              onPressed: () {
                print("Filled boutton pressed!");
              },
              child: const Text('Filled'),
            )
          ],
        ),
        appBar: AppBar(
          title: Text("Mon App 1"),
          actions: [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.delete),
            ),
            IconButton(
              onPressed: () {
                print("Add Call pressed!");
              },
              icon: Icon(Icons.add_call),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Cloud Button pressed!");
          },
          child: Icon(Icons.cloud_done),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
