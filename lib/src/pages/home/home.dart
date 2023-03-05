import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

const _bottomItem = <String, IconData>{
  'tab1': Icons.heart_broken,
  'Home': Icons.home_outlined,
  'Profile': Icons.person_pin_outlined,
};

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final curvature = Radius.circular(8.0);
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.only(bottomLeft: curvature, bottomRight: curvature),
        ),
        title: Text("Home"),
        actions: const [
          Icon(Icons.settings),
        ],
      ),
      body: const Center(
        child: Text(
          "HOME",
          textScaleFactor: 3.0,
        ),
      ),
      bottomNavigationBar: ConvexAppBar.badge(
        initialActiveIndex: 1,
        const {},
        style: TabStyle.reactCircle,
        backgroundColor: Theme.of(context).primaryColor,
        items: <TabItem>[
          for (final entry in _bottomItem.entries)
            TabItem(icon: entry.value, title: entry.key)
        ],
      ),
    );
  }
}
