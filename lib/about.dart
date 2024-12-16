import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(
                text: 'About',
              ),
              Tab(
                text: 'Table',
              ),
              Tab(
                text: 'Home',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Center(
                  child: Text('About Flutter'),
                ),
                Center(
                  child: Text('Table Flutter'),
                ),
                Center(
                  child: Text('Home Flutter'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
