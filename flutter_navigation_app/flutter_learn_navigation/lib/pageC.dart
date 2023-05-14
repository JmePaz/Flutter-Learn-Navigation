import 'package:flutter/material.dart';
import 'package:flutter_learn_navigation/main.dart';

class PageC extends StatefulWidget {
  const PageC({super.key});

  @override
  State<PageC> createState() => _PageCState();
}

class _PageCState extends State<PageC> {
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
              child: Text("This is Page C",
                  style: Theme.of(context).textTheme.displayMedium,
                  textAlign: TextAlign.center)),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/D'),
              child: const Text('Go to Page D')),
          ElevatedButton(
              onPressed: Navigator.of(context).pop,
              child: const Text("Go Back")),
        ],
      ),
      bottomNavigationBar: MyApp.navBar,
    );
  }
}
