import 'package:audio_player/pages/MusicPage.dart';
import 'package:audio_player/pages/PlaylistPage.dart';
import 'package:audio_player/widgets/MusicList.dart';
import 'package:audio_player/widgets/PlayList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              Color.fromARGB(255, 42, 22, 106),
              Color.fromARGB(255, 12, 105, 7)
            ])),
        child: Scaffold(
          backgroundColor: Color.fromARGB(162, 8, 13, 36),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "MusicPage");
                          },
                          child: Icon(
                            Icons.sort_rounded,
                            color: Colors.green,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.green,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Audio player",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Audio playerdan foydalang",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 20, bottom: 20),
                    child: Container(
                      height: 50,
                      width: 380,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            height: 50,
                            width: 200,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "sear music",
                                hintStyle: TextStyle(color: Colors.amberAccent),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(Icons.search, size: 30),
                          )
                        ],
                      ),
                    ),
                  ),
                  TabBar(
                    isScrollable: true,
                    labelStyle: TextStyle(fontSize: 18),
                    indicator: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ))),
                    tabs: [
                      Tab(
                        text: "Musics",
                      ),
                      Tab(
                        text: "Playlist",
                      ),
                      Tab(
                        text: "Favourites",
                      ),
                      Tab(
                        text: "Trending",
                      ),
                      Tab(
                        text: "Collection",
                      ),
                      Tab(
                        text: "New",
                      ),
                    ],
                  ),
                  Flexible(
                    flex: 1,
                    child: TabBarView(children: [
                      MusicList(),
                      PlayList(),
                      PlaylistPage(),
                      Container(
                        color: Colors.green,
                      ),
                      Container(
                        color: Colors.green,
                      ),
                      Container(
                        color: Colors.green,
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
