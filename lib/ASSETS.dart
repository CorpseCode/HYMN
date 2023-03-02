import 'package:flutter/material.dart';

class ASSETS{

  String FONT = 'Montserrat';

  var LIGHTMODE = const Color.fromARGB(255, 210, 75, 0);
  var DARKMODE = Color.fromARGB(178, 255, 255, 255);

  Color BGCOLOR = const Color.fromARGB(255, 4, 16, 26);
  Color BGCOLOR2 = const Color.fromARGB(255, 24, 36, 46);

  //Dark Mode Gradient Colors
  var darkModeGradient = <Color>[
    const Color.fromARGB(255, 4, 16, 26).withOpacity(0.8),
    const Color.fromARGB(255, 24, 36, 46),
    const Color.fromARGB(255, 24, 36, 46),
    const Color.fromARGB(255, 24, 36, 46),
    const Color.fromARGB(255, 4, 16, 26).withOpacity(0.8),
  ];

  //Light Mode Gradient Colors
  var lightModeGradient = <Color>[
    Colors.deepPurple.shade800.withOpacity(0.8),
    Colors.deepPurple.shade200.withOpacity(0.8),
  ];

  //image assets names
  String USER = 'assets/user.png';
}
