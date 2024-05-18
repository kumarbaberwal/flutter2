import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text("Rows Cols Wrap"),
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.pink[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  // border: Border.all(color: Colors.white, width: 4),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white, blurRadius: 5, spreadRadius: 8),
                  ]),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.purple,
                  // border: Border.all(color: Colors.white, width: 4),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white, blurRadius: 5, spreadRadius: 8),
                  ]),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  // border: Border.all(color: Colors.white, width: 4),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white, blurRadius: 5, spreadRadius: 8),
                  ]),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.brown,
                  // border: Border.all(color: Colors.white, width: 4),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white, blurRadius: 5, spreadRadius: 8),
                  ]),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.yellow,
                  // border: Border.all(color: Colors.white, width: 4),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white, blurRadius: 5, spreadRadius: 8),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
