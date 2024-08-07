import 'package:flutter/material.dart';
import 'package:myapp/learn_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return const LearnFlutter();
            }),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green[300],
        ),
        child: const Text('learn flutter!'),
      ),
    );
  }
}
