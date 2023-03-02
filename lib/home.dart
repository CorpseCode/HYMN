import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hymusic/CustomWidgets/BorderText.dart';
import 'ASSETS.dart';

class Home extends StatelessWidget {

  ASSETS ASSET = ASSETS();

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            child: const Icon(
              Icons.search_rounded,
              color: Colors.white70,
              size: 35.0,
            ),
            onTap: ()=>{
              Navigator.pushNamed(context, '/search'),
            },
          ),
          const SizedBox(width: 10.0)
        ],
        backgroundColor: ASSET.BGCOLOR,
        title: BorderText(
            borderColor: Colors.black,
            fillColor: Colors.white70,
            fontSize: 30,
            text: 'HYMN'
        ),
        elevation: 0.0,
      ),
      body: Container(
        color: ASSET.BGCOLOR,
      ),
    );
  }
}
