import 'package:flutter/material.dart';
import 'package:whatpp/screen/chat_screen.dart';
import 'package:whatpp/screen/group_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green.shade700,
            foregroundColor: Colors.white,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Whatsapp',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.camera_alt,
                      size: 20,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.search,
                      size: 20,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Icon(Icons.more_vert)
                  ],
                )
              ],
            ),
            bottom: const TabBar(
                unselectedLabelColor: Colors.white,
                labelColor: Colors.white,
                tabs: [
                  Icon(Icons.person_2),
                  Text(
                    'char',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'call',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'recor',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ]),
          ),
          body: TabBarView(
            children: [
              const GroupScreen(),
              const ChatScreen(),
              Container(color: Colors.amber),
              Container(color: Colors.amber),
            ],
          ),
        ));
  }
}
