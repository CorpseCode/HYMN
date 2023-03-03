class Song {

  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({

    required this.title,
    required this.description,
    required this.url,
    this.coverUrl = 'assets/nocover.jpeg'

  });

  static List<Song> songs = [

    Song(
      title: 'Deathbed',
      description: 'Deathbed',
      url: 'assets/songs/deathbed.mp3',
    ),
    Song(
      title: 'Sadness',
      description: 'Naruto',
      url: 'assets/songs/sadnessandsorrow.mp3',
    ),
    Song(
      title: 'Unravel',
      description: 'TokyoGhoul',
      url: 'assets/songs/unravellofi.mp3',
    )

  ];

}