import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:netflix/routes/routes.dart';
import 'package:netflix/theme/dark.dart';
import 'package:netflix/view/home/home.dart';
import 'package:netflix/view_model/shows_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ShowsProvider(),
        ),
      ],
      child: MaterialApp(
        routes: routes,
        theme: dark,
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
