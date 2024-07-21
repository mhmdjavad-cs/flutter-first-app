import 'package:flutter/material.dart';
import 'package:myapp/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Fist App using Flutter!',
            style: TextStyle(
              color: Colors.white70,
            )),
        backgroundColor: Colors.green,
      ),
      body: HomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {debugPrint("hello world!!!!")},
        backgroundColor: Colors.green[400],
        child: const Icon(
          Icons.add,
          color: Colors.white70,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
        ],
        onDestinationSelected: (int value) {
          debugPrint(value.toString());
          setState(() {
            currentPage = value;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
