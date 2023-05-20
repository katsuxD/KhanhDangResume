import 'package:flutter/material.dart';
import 'package:katsu_resume/Provider/tab_data_provider.dart';
import 'package:katsu_resume/views/homepage.dart';
import 'package:provider/provider.dart';

import 'Widgets/Cursor/animated-circle_cursor.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => TabDataProvider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Resume',
      home: AnimatedCursorWrapper(
        child: HomePage(),
      ),
    );
  }
}
