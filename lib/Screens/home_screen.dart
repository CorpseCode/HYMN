import 'package:flutter/material.dart';
import 'package:hymusic/ASSETS.dart';

import '../CustomWidgets/SectionHeader.dart';
import '../CustomWidgets/discover_music.dart';
import '../CustomWidgets/song_card.dart';
import '../models/song_model.dart';


class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

//Initializing Custom ASSETS file Constructor
  ASSETS asset = ASSETS();

// //variables that can be used later
//   var gradient;
//   var modeColor;
//   var isDark;
//   var mode;
//
//   //this code is for stateful Widget (if implied)
//   void initState() {
//
//     gradient = ASSET.darkModeGradient;
//     modeColor = ASSET.LIGHTMODE;
//     isDark = true;
//     mode = Icon(
//       Icons.light_mode_rounded,
//       size: 30,
//       color: modeColor,
//     );
//   }

//----------------------Coding For The HomePage Is Here-----------------------//
  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: asset.darkModeGradient,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _CustomAppBar(),
        bottomNavigationBar: _CustomNavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const DiscoverMusic(),
                    const Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0)),
                    Column(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: SectionHeader(
                            title: 'Trending Music',
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.27,
                          child: ListView.builder(
                              itemCount: songs.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return SongCard(song: songs[index]);
                              }),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//----------------------------------------------------------------------------//

//Custom Bottom Navigation Bar
class _CustomNavBar extends StatelessWidget {
  _CustomNavBar({Key? key}) : super(key: key);

  ASSETS asset = ASSETS();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: asset.BGCOLOR2.withOpacity(0.6),
      unselectedItemColor: Colors.white70,
      selectedItemColor: Colors.white70,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline), label: 'Favourites'),
        BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_rounded), label: 'Play'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}

//----------------------------------------------------------------------------//

//Custom App Bar
class _CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  _CustomAppBar({Key? key}) : super(key: key);

  ASSETS asset = ASSETS();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20.0),
          child: const CircleAvatar(
            backgroundColor: Colors.white70,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1612810806695-30f7a8258391?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80'),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
