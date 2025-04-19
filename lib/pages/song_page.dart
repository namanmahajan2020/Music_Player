import 'package:flutter/material.dart';
import 'package:music_player/components/neu_box.dart';
import 'package:music_player/models/playlist_provider.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<PlaylistProvider>(
        builder:
            (context, value, child) => Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
              body: Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                  right: 25,
                  bottom: 25,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () =>Navigator.pop(context),
                          icon: Icon(Icons.arrow_back),
                        ),
                        Text("P L A Y L I S T"),
                        IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                      ],
                    ),
                    const SizedBox(height: 25),
                    NeuBox(
                      ChilD: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset("lib/assets/images/pic1.jpg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "so sick",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text("Neyo"),
                                  ],
                                ),
                                Icon(Icons.favorite, color: Colors.red),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Column(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("0:00"),
                              Icon(Icons.shuffle),
                              Icon(Icons.repeat),
                              Text("0:00"),
                            ],
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 7,
                            ),
                          ),
                          child: Slider(
                            min: 0,
                            max: 100,
                            value: 50,
                            activeColor: Colors.green,
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: (){},
                            child: NeuBox(ChilD: Icon(Icons.skip_previous)),
                          ),
                        ),
                        SizedBox(width: 20,),
                         Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: (){},
                            child: NeuBox(ChilD: Icon(Icons.play_arrow)),
                          ),
                        ),
                        SizedBox(width: 20,),
                         Expanded(
                          child: GestureDetector(
                            onTap: (){},
                            child: NeuBox(ChilD: Icon(Icons.skip_next)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
