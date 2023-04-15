import 'package:flutter/material.dart';
import 'package:notification/services/notify_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
            
            },
            child: Text('Show Notification')),
      ),
    );
  }
}
