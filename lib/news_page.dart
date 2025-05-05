import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  final String userId;
  final String path;
  const NewsPage({super.key, required this.userId, required this.path});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(widget.userId),
            Text(widget.path),
          ],
        ),
      ),
    );
  }
}
