import 'package:flutter/material.dart';
import 'package:hymusic/Screens/screens.dart';
import 'package:get/get.dart';
import 'package:hymusic/Screens/search.dart';

import 'Screens/home_screen.dart';
import 'Screens/playlist_screen.dart';

void main() =>  runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white70,
          displayColor: Colors.white70,
        ),
      ),
      home: Home(),
      getPages: [
        GetPage(name: '/', page: () => Home () ),
        GetPage(name: '/search', page: () => Search () ),
        GetPage(name: '/playlist', page: () => Playlist () )
      ],
    );
  }
}
