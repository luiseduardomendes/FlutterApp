import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    int userId = int.parse('${ModalRoute.of(context)?.settings.arguments}');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/home/discussion', arguments: userId);
                },
                child: const Text('Fórum de discussões')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/');
                },
                child: const Text('Log out')),
          ],
        ),
      ),
    );
  }
}
