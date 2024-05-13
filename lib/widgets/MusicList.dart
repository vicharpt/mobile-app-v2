import 'package:flutter/material.dart';
import 'package:vicharpt/templates/CardMusic.dart';

class MusicList extends StatelessWidget {
  final List<List> musics;
  MusicList(this.musics);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 15),
          for (int i = 0; i < musics.length; i++)
            CardMusic(
                serialNumber: (i + 1).toString(),
                title: musics[i][0],
                artis: musics[i][1],
                music: musics[i][2],
                time: musics[i][3])
        ],
      ),
    );
  }
}