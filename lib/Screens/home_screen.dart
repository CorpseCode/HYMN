
import 'package:flutter/material.dart';
import 'package:hymusic/CustomWidgets/BorderText.dart';
import 'package:hymusic/ASSETS.dart';

class Home extends StatefulWidget {


  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ASSETS ASSET = ASSETS();
  var gradient;
  var modeColor;
  var isDark;
  var mode;

  @override
  void initState() {
    // TODO: implement initState
    gradient = ASSET.darkModeGradient;
    modeColor = ASSET.LIGHTMODE;
    isDark = true;
    mode = Icon(Icons.light_mode_rounded, size: 30, color: modeColor,);

  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: gradient,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _CustomAppBar(),
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  _CustomAppBar({Key? key}) : super(key: key);

  ASSETS ASSET = ASSETS();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20.0),
            child: Image.asset(ASSET.USER, scale: 15,),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
