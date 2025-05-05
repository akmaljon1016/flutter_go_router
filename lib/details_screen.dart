import 'package:flutter/material.dart';
import 'package:flutter_go_router/home_page.dart';
import 'package:go_router/go_router.dart';

class DetailsScreen extends StatefulWidget {
  final String id;
  final String name;

  const DetailsScreen({super.key, required this.id, required this.name});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.id.toString()),
            Text(widget.name),
          ],
        ),
      ),
    );
  }
}
