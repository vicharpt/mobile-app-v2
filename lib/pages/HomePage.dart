import 'package:flutter/material.dart';
import 'package:vicharpt/widgets/MusicList.dart';
import 'package:vicharpt/widgets/PlayList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          body: SafeArea(
              child: Padding(
            padding: EdgeInsets.only(top: 20, left: 22, right: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Color(0xFF899CCF),
                        size: 30,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.more_vert,
                        color: Color(0xFF899CCF),
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
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
                    width: 380,
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
                          width: 200,
                          child: TextFormField(
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
                  labelStyle: TextStyle(
                      fontSize: 18, color: Colors.white.withOpacity(0.6)),
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
                  MusicList(),
                  PlayList(),
                  MusicList(),
                  MusicList(),
                  MusicList(),
                  MusicList(),
                ]))
              ],
            ),
          )),
        ),
      ),
    );
  }
}
