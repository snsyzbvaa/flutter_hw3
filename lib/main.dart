import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Slime from Minecraft'),
          centerTitle: true,
        ),
        body: const Center(
          child: CreeperWidget(),
        ),
      ),
    );
  }
}

class CreeperWidget extends StatelessWidget {
  const CreeperWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      margin: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  left: 50,
                  child: Container(
                    width: 110,
                    height: 110,
                    color: Color.fromARGB(255, 89, 188, 92),
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 63,
                  child: Container(
                    width: 27,
                    height: 27,
                    color: Color.fromARGB(255, 56, 121, 58),
                  ),
                ),
                Positioned(
                  top: 90,
                  right: 54,
                  child: Container(
                    width: 27,
                    height: 27,
                    color: const Color.fromARGB(255, 56, 121, 58),
                  ),
                ),
                Positioned(
                  top: 132,
                  right: 80,
                  child: Container(
                    width: 12,
                    height: 12,
                    color: const Color.fromARGB(255, 56, 121, 58),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Slimes are a cube shape Hostile Mob in Minecraft, they’re known to drop valuable loot and spawn in two different biomes',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}
