
import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/search': (context) => const Search(),
    },
  ));
}