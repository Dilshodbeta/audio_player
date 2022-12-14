import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MusicList extends StatelessWidget {
  const MusicList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          for (int i = 1; i < 60; i++)
            Container(
              margin: EdgeInsets.only(top: 15, right: 12, left: 5),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 5, 73, 39),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Text(
                    i.toString(),
                    style: TextStyle(fontSize: 18, color: Colors.limeAccent),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "HomePage");
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "imagine Dragons - Believer",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              'Bass',
                              style: TextStyle(
                                color: Colors.greenAccent.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "_",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 25),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "4:30",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                    padding: EdgeInsets.symmetric(),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      size: 25,
                      color: Colors.blueGrey,
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
