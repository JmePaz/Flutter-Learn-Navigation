import 'package:flutter/material.dart';
import 'package:flutter_learn_navigation/main.dart';

class PageB extends StatefulWidget {
  const PageB({super.key});

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {
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
              child: Text("This is Page B",
                  style: Theme.of(context).textTheme.displayMedium,
                  textAlign: TextAlign.center)),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/C'),
              child: const Text('Go to Page C')),
          ElevatedButton(
              onPressed: Navigator.of(context).pop,
              child: const Text("Go Back")),
        ],
      ),
      bottomNavigationBar: MyApp.navBar,
    );
  }
}
