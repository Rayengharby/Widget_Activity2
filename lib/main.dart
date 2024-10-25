import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Activity 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScaffoldSample(),
    );
  }
}

class ScaffoldSample extends StatelessWidget {
  const ScaffoldSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Affirmations"),
      ),
      body: const AffirmationList(),
    );
  }
}

class AffirmationCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const AffirmationCard({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 194,
            width: 600,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}

class AffirmationList extends StatelessWidget {
  const AffirmationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        AffirmationCard(imagePath: "assets/image1.jpg", title: "Affirmation 1"),
        AffirmationCard(imagePath: "assets/image2.jpg", title: "Affirmation 2"),
        AffirmationCard(imagePath: "assets/image3.jpg", title: "Affirmation 3"),
        AffirmationCard(imagePath: "assets/image4.jpg", title: "Affirmation 4"),
      ],
    );    
  }
}
