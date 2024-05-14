import 'package:flutter/material.dart';
import 'package:vicharpt/templates/CardMusic.dart';

class MusicList extends StatelessWidget {
  MusicList(this.musics);
  final musics;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: musics,
      builder: (context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return Center(
              child: CircularProgressIndicator.adaptive(
            backgroundColor: Colors.blue,
          ));
        } else {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return CardMusic(
                  serialNumber: (index + 1).toString(),
                  title: snapshot.data[index]["title"],
                  artis: snapshot.data[index]["artis"],
                  music: snapshot.data[index]["music"],
                  time: "03:06");
            },
          );
        }
      },
    );
  }
}
