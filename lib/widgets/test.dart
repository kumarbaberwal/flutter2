import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  TestState createState() => TestState();
}

class TestState extends State<Test> {
  List<String> naam = [
    "Kumar",
    "Bhavya",
    "Shreya",
    "Yashika",
    "Kasish",
    "Shivam"
  ];
  Map<String, dynamic> naamSec = {
    "naam": ['Kumar', 'Kumar', 'Kumar', 'Kumar', 'Kumar', 'Kumar'],
    "sec": [
      'Section C',
      'Section C',
      'Section C',
      'Section C',
      'Section C',
      'Section C'
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 8,
        centerTitle: true,
        title: const Text(
          "List and Grid",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            for (var i = 0; i < naam.length; i++)
              const Card(
                child: ListTile(
                  title: Text('Orange'),
                  subtitle: Text("Kumar ate this fruit"),
                ),
              ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: naam.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 20),
                itemBuilder: (context, index) {
                  return Card(
                    child: Center(
                      child: Text(naamSec["naam"][index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}