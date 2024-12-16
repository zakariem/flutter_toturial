import 'package:assisgn/about.dart';
import 'package:assisgn/home.dart';
import 'package:assisgn/table.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List screens = [
    const Home(),
    const About(),
    const Tabless(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
          centerTitle: true,
        ),
        body: screens[_currentIndex],
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/HIYA.png'),
                    ),
                  ),
                  child: Image.asset('assets/foley.png'),
                ),
              ),
              InkWell(
                onTap: () => setState(() {
                  _currentIndex = 0;
                }),
                child: const ListTile(
                  title: Text('Home'),
                  leading: Icon(
                    Icons.home,
                  ),
                ),
              ),
              InkWell(
                onTap: () => {
                  setState(() {
                    _currentIndex = 1;
                  }),
                  Navigator.pop(context),
                },
                child: const ListTile(
                  title: Text('Settings'),
                  leading: Icon(
                    Icons.settings,
                  ),
                ),
              ),
              InkWell(
                onTap: () => setState(() {
                  _currentIndex = 2;
                }),
                child: const ListTile(
                  title: Text('Logout'),
                  leading: Icon(
                    Icons.logout,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.import_contacts), label: 'About'),
            BottomNavigationBarItem(
                icon: Icon(Icons.table_bar), label: 'Table'),
          ],
        ),
      ),
    );
  }
}