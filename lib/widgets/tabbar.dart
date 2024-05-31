import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow.shade300,
            centerTitle: true,
            title: const Text(
              'TabBar',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            bottom: const TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.green,
                indicatorColor: Colors.green,
                indicatorWeight: 5,
                // dividerColor: Colors.yellow,
                tabs: [
                  Tab(
                    icon: Icon(Icons.chat),
                    text: 'Chat',
                  ),
                  Tab(
                    icon: Icon(Icons.chat_bubble_rounded),
                    text: 'Status',
                  ),
                  Tab(
                    icon: Icon(Icons.call),
                    text: 'Call',
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                    text: 'Profile',
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            Center(
              child: Text(
                'Here is Chat',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                'Here is Status',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                'Here is Call',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                'This is Your Profile',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontSize: 30),
              ),
            ),
          ]),
        ));
  }
}
