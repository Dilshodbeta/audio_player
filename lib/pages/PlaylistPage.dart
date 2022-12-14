import 'dart:html';

import 'package:audio_player/pages/HomePage.dart';
import 'package:audio_player/widgets/MusicList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PlaylistPage extends StatelessWidget {
  const PlaylistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.green]),
      ),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "MusicPage");
                      },
                      child: Icon(
                        CupertinoIcons.back,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context, "MusicPage");
                      },
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/4.gif',
                  width: 250,
                  height: 260,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    'Imagen Dracons',
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 161, 19).withOpacity(0.9),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Singer Name',
                    style: TextStyle(
                      color: Color.fromARGB(255, 15, 202, 55).withOpacity(0.8),
                      fontSize: 18,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
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
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Play All',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.grey,
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Shuffle',
                            style: TextStyle(
                                color: Color.fromARGB(255, 13, 4, 110),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.shuffle,
                            color: Color.fromARGB(255, 5, 117, 29),
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              ),
              for (int i = 1; i < 70; i++)
                Container(
                  margin: EdgeInsets.only(top: 20, right: 20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, " PlayList()");
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/4.gif",
                            fit: BoxFit.cover,
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Imagine Dragons",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "70 songs",
                            style: TextStyle(
                              color: Colors.white10.withOpacity(0.9),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 185,
                      ),
                      Icon(Icons.play_arrow,
                          color: Colors.white.withOpacity(0.6), size: 30),
                    ],
                  ),
                ),
              Container(
                margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                padding: EdgeInsets.symmetric(),
              ),
            ]),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 19, 11, 77),
      ),
    );
  }
}
