import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    var backward_end_fill;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/5.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.5),
                Color.fromARGB(145, 43, 52, 49),
                Colors.grey,
              ])),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 45,
                    horizontal: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 23, horizontal: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Imagine Dragons",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 224, 231, 226)
                                        .withOpacity(0.9),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Singer Name",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
                              size: 35,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Slider(
                            min: 0,
                            max: 200,
                            value: 40,
                            onChanged: (value) {},
                            activeColor: Colors.white,
                            inactiveColor: Colors.white54,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '02:10',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '04:20',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.list,
                            color: Colors.white,
                            size: 32,
                          ),
                          Icon(
                            CupertinoIcons.backward_end_fill,
                            color: Colors.white,
                            size: 32,
                          ),
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                              size: 45,
                            ),
                          ),
                          Icon(
                            CupertinoIcons.forward_end_fill,
                            color: Colors.white,
                            size: 32,
                          ),
                          Icon(
                            Icons.download,
                            color: Colors.white,
                            size: 32,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
