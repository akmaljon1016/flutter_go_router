import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            context.push('/details/12/Akmaljon');
          },
          color: Colors.green,
          child: Text(
            "Go Details Page",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}