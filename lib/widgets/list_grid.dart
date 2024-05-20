import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  ListGridState createState() => ListGridState();
}

class ListGridState extends State<ListGrid> {
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
          margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
          child: GridView.builder(
            itemCount: naam.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (context, index) {
              return Card(
                child: Center(
                  child: Text(naamSec["naam"][index]),
                ),
              );
            },
          ),
          //   child: GridView(
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
          //     children: const [
          //       Card(
          //         child: Center(child: Text('Kumar')),
          //       ),
          //       Card(
          //         child: Center(child: Text('Kumar')),
          //       ),
          //       Card(
          //         child: Center(child: Text('Kumar')),
          //       ),
          //       Card(
          //         child: Center(child: Text('Kumar')),
          //       ),
          //       Card(
          //         child: Center(child: Text('Kumar')),
          //       ),
          //       Card(
          //         child: Center(child: Text('Kumar')),
          //       ),
          //     ],
          //   ),
          // )
          // ListView.builder(
          //   itemCount: naam.length,
          //   itemBuilder: (context, index) {
          //     return Card(
          //       child: ListTile(
          //         onTap: () {
          //           print(naamSec["naam"][index]);
          //         },
          //         leading: const Icon(Icons.person),
          //         title: Text(naamSec["naam"][index]),
          //         subtitle: Text(naamSec["sec"][index]),
          //       ),
          //     );
          //   },
          // )
          // Container(
          //   child: ListView(
          //     children: [
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           title: Text('Orange'),
          //           subtitle: Text("Kumar ate this fruit"),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ));
  }
}
