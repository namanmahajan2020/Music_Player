import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_player/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    Song(
      songName: "Acid Rap",
      artistName: "Neyo",
      albumArtImagePath: "lib/assets/images/pic1.jpg",
      audioPath: "assets/audio/Born_To_Shine.mp3",
    ),
    Song(
      songName: "Paradise",
      artistName: "Rafe",
      albumArtImagePath: "lib/assets/images/pic2.webp",
      audioPath: "assets/audio/Born_To_Shine.mp3",
    ),
    Song(
      songName: "So Sick",
      artistName: "Diljit Dosanjh",
      albumArtImagePath: "lib/assets/images/pic3.jpg",
      audioPath: "assets/audio/Born_To_Shine.mp3",
    ),
    Song(
      songName: "Pheonix",
      artistName: "Frankie",
      albumArtImagePath: "lib/assets/images/pic4.avif",
      audioPath: "assets/audio/Born_To_Shine.mp3",
    ),
  ];

  final AudioPlayer _audioPlayer = AudioPlayer();
  Duration _currentDuration = Duration.zero;
  Duration _totalDuration = Duration.zero;

  bool _isPlaying = false;

  void play() async {
    final String path = _playlist[_currentSongIndex!].audioPath;
    await _audioPlayer.stop();
    await _audioPlayer.play(AssetSource(path));
    _isPlaying=true;
    notifyListeners();
  }

  void pause() async{
    await _audioPlayer.stop();
    _isPlaying=false;
    notifyListeners();
  }

  void resume()async{
    await _audioPlayer.resume();
    _isPlaying=true;
    notifyListeners();
  }


  PlaylistProvider() {
    ListenToDuration();
  }

  void ListenToDuration() {
    _audioPlayer.onDurationChanged.listen((newDuration) {
      _totalDuration = newDuration;
      notifyListeners();
    });

    _audioPlayer.onPositionChanged.listen((newPosition) {
      _currentDuration = newPosition;
      notifyListeners();
    });

    _audioPlayer.onPlayerComplete.listen((event) {});
  }

  int? _currentSongIndex;

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;
  set currentSongIndex(int? newIndex) {
    _currentSongIndex = newIndex;
    notifyListeners();
  }
}
