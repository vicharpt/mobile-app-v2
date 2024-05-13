import 'package:flutter/material.dart';
import 'package:vicharpt/widgets/MusicList.dart';
import 'package:vicharpt/widgets/PlayList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<List> musics = [
    ["Imagine Dragons - Believer", "Arnold", "", "03:30"],
    ["Bang ucok pergi", "selmi", "", "03:30"],
    ["Imagine Dragons - Believer", "Arnold", "", "03:30"],
    ["Imagine Dragons - Believer", "Arnold", "", "03:30"],
    ["Imagine Dragons - Believer", "Arnold", "", "03:30"],
  ];
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xFF303151).withOpacity(0.6),
              Color(0xFF303151).withOpacity(0.9),
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: Padding(
              padding: EdgeInsets.fromLTRB(5, 30, 20, 0),
              child: AppBar(
                backgroundColor: Colors.transparent,
                title: Padding(
                  padding: EdgeInsets.only(bottom: 0),
                  child: Text(
                    "VICHARPT",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                actions: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white.withOpacity(0.9),
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: SafeArea(
              child: Padding(
            padding: EdgeInsets.only(top: 20, left: 22, right: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Temukan kebahagian dengan menderkan musik",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 10),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFF31314F),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width - 145,
                          child: TextField(
                            onChanged: (value) => {setState(() {})},
                            controller: search,
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.8)),
                            decoration: InputDecoration(
                                hintText: "Telusuri musik...",
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),
                                border: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TabBar(
                  isScrollable: false,
                  indicatorWeight: 8,
                  unselectedLabelColor: Color(0xFF31314F),
                  labelStyle: TextStyle(fontSize: 18, color: Color(0xFF899CCF)),
                  indicator: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 2, color: Color(0xFF899CCF)))),
                  tabs: [
                    Tab(
                        child: Icon(
                      Icons.music_note_outlined,
                      size: 25,
                    )),
                    Tab(
                        child: Icon(
                      Icons.auto_awesome_outlined,
                      size: 25,
                    )),
                    Tab(
                        child: Icon(
                      Icons.fiber_new_outlined,
                      size: 40,
                    )),
                    Tab(
                        child: Icon(
                      Icons.favorite_border_rounded,
                      size: 25,
                    )),
                    Tab(
                        child: Icon(
                      Icons.turned_in_not_rounded,
                      size: 25,
                    )),
                  ],
                ),
                Flexible(
                    child: TabBarView(children: [
                  MusicList(musics),
                  MusicList(musics),
                  MusicList(musics),
                  MusicList(musics),
                  PlayList(),
                ]))
              ],
            ),
          )),
        ),
      ),
    );
  }
}
