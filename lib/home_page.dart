import 'package:flutter/material.dart';
import 'package:hello_world/get_started.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const GetStartedPage();
              },
            ),
          );
        },
        child: const Text('Get Started'),
      ),
    );
  }
}
