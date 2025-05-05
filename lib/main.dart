import 'package:flutter/material.dart';
import 'package:flutter_go_router/news_page.dart';
import 'package:go_router/go_router.dart';

import 'details_screen.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GoRouter _router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => HomePage()),
    GoRoute(
        path: '/details/:id/:name',
        builder: (context, state) {
          final id = state.pathParameters['id'];
          final name = state.pathParameters['name'];
          return DetailsScreen(
            id: id!,
            name: name!,
          );
        }),
    GoRoute(
      path: "/news/:id/:path",
      name: "news",
      builder: (context, state) => NewsPage(
        userId: state.pathParameters["id"].toString(),
        path: state.pathParameters["path"].toString(),
      ),
    )
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Navigation with go_router',
    );
  }
}
