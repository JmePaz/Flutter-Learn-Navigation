import 'package:flutter/material.dart';
import 'package:flutter_learn_navigation/pageB.dart';
import 'package:flutter_learn_navigation/pageC.dart';
import 'package:flutter_learn_navigation/pageD.dart';
import 'package:flutter_learn_navigation/bottomNavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Flutter Navigator';
  static const Widget navBar = MyNavBar();
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: MyApp.title,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const MyHomePage(title: MyApp.title),
          '/B': (context) => const PageB(),
          '/C': (context) => const PageC(),
          '/D': (context) => const PageD(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget homePage() {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "This is home page",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/B'),
              child: const Text("Go to Page B"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Navigator(
        onGenerateRoute: (settings) {
          Widget page = homePage();
          if (settings.name == '/B') {
            page = const PageB();
          } else if (settings.name == '/C') {
            page = const PageC();
          }

          return MaterialPageRoute(builder: (_) => page);
        },
      ),
      bottomNavigationBar: MyApp.navBar,
    );
  }
}
