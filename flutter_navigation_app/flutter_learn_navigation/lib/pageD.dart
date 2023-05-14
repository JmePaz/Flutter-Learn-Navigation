import 'package:flutter/material.dart';
import 'package:flutter_learn_navigation/main.dart';

class PageD extends StatefulWidget {
  const PageD({super.key});

  @override
  State<PageD> createState() => _PageDState();
}

class _PageDState extends State<PageD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyApp.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text("This is Page D",
                  style: Theme.of(context).textTheme.displayMedium,
                  textAlign: TextAlign.center)),
          ElevatedButton(
              onPressed: Navigator.of(context).pop,
              child: const Text("Go Back")),
        ],
      ),
    );
  }
}
