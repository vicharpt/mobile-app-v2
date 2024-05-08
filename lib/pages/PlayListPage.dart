import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vicharpt/widgets/MusicList.dart';

class PlayListPage extends StatelessWidget {
  List<List> musics = [
    ["Imagine Dragons - Believer", "Arnold", "", "03:30"],
    ["Imagine Dragons - Believer", "Arnold", "", "03:30"],
    ["Imagine Dragons - Believer", "Arnold", "", "03:30"],
    ["Imagine Dragons - Believer", "Arnold", "", "03:30"],
    ["Imagine Dragons - Believer", "Arnold", "", "03:30"],
    ["Imagine Dragons - Believer", "Arnold", "", "03:30"],
    ["Imagine Dragons - Believer", "Arnold", "", "03:30"],
    ["Imagine Dragons - Believer", "Arnold", "", "03:30"],
    ["Imagine Dragons - Believer", "Arnold", "", "03:30"],
    ["Imagine Dragons - Believer", "Arnold", "", "03:30"],
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xFF303151).withOpacity(0.6),
            Color(0xFF303151).withOpacity(0.9)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        CupertinoIcons.back,
                        color: Color(0xFF899CCF),
                        size: 30,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.more_vert,
                        color: Color(0xFF899CCF),
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 100),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "foto-album.jpg",
                  width: 250,
                  height: 260,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Text(
                    "Imagine Dragons",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Artis",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), fontSize: 18),
                  )
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 170,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Mainkan",
                            style: TextStyle(
                              color: Color(0xFF30314D),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.play_arrow_rounded,
                            color: Color(0xFF30314D),
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 170,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Color(0xFF30314D).withOpacity(0.6),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Acak",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.shuffle,
                            color: Colors.white,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: MusicList(musics),
              )
            ],
          ),
        )),
      ),
    );
  }
}
