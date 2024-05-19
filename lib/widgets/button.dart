import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        // titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
        title: const Text(
          "Buttons",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(20),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(20)),
                    overlayColor: MaterialStateProperty.all(Colors.cyan),
                    backgroundColor: MaterialStateProperty.all(Colors.amber)),
                onPressed: () {},
                child: const Text(
                  "Press Me!",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Colors.black),
                  overlayColor: const MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ))
                ),
                  onPressed: () {
                  },
                  child: const Text(
                    "Press Me!",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
