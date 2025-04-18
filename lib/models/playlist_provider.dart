import 'package:flutter/material.dart';
import 'package:music_player/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    Song(
      songName: "Acid Rap",
      artistName: "Neyo",
      albumArtImagePath: "assets/images/pic1.jpg",
      audioPath: "assets/audio/Born_To_Shine.mp3",
    ),
    Song(
      songName: "Paradise",
      artistName: "Rafe",
      albumArtImagePath: "assets/images/pic2.webp",
      audioPath: "assets/audio/Born_To_Shine.mp3",
    ),
    Song(
      songName: "So Sick",
      artistName: "Diljit Dosanjh",
      albumArtImagePath: "assets/images/pic3.jpg",
      audioPath: "assets/audio/Born_To_Shine.mp3",
    ),
    Song(
      songName: "Pheonix",
      artistName: "Frankie",
      albumArtImagePath: "assets/images/pic4.avif",
      audioPath: "assets/audio/Born_To_Shine.mp3",
    ),
  ];

  int? _currentSongIndex;

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;
}
