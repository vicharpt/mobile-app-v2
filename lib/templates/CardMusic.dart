import 'package:flutter/material.dart';

class CardMusic extends StatefulWidget {
  const CardMusic({
    super.key,
    required this.serialNumber,
    required this.title,
    required this.artis,
    required this.music,
    required this.time,
  });

  final String serialNumber, title, artis, music, time;

  @override
  State<CardMusic> createState() =>
      _CardMusicState(serialNumber, title, artis, music, time);
}

class _CardMusicState extends State<CardMusic> {
  _CardMusicState(
      this.serialNumber, this.title, this.artis, this.music, this.time);
  final String serialNumber, title, artis, music, time;
  IconData icon = Icons.play_arrow;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, right: 5, left: 5),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          color: Color(0xFF30314D), borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Text(
            serialNumber,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          SizedBox(width: 25),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "musicPage");
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.length > 20 ? title.substring(0, 20) + " ..." : title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      artis,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "-",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6), fontSize: 25),
                    ),
                    SizedBox(width: 5),
                    Text(
                      time,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  icon = icon == Icons.play_arrow
                      ? icon = Icons.pause
                      : icon = Icons.play_arrow;
                });
              },
              child: Icon(
                icon,
                size: 25,
                color: Color(0xFF31314F),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
