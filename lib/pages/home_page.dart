// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mentalapp/utils/emotion_face.dart';
import 'package:mentalapp/utils/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
        body: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(children: [
                Row(
                  // spacing for the text and icon
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    // Text for  Appbar
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi Josef!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text("23 Jan, 2015",
                            style: TextStyle(color: Colors.blue[200]))
                      ],
                    ),
                    // Notification
                    Container(
                      decoration: BoxDecoration(color: Colors.blue[600]),
                      padding: EdgeInsets.all(12),
                      child: Icon(Icons.notifications, color: Colors.white),
                    )
                  ],
                ),

                SizedBox(height: 25),
                //  search bar
                Container(
                  //padding
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                // how do you feel
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "How do you feel",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.more_horiz_outlined, color: Colors.white),
                  ],
                ),
                SizedBox(height: 25),
                // Four different Faces
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // runes for the faces
                      // bad
                      Column(
                        children: [
                          EmotionFace(
                            emojiconFace: '😂',
                          ),
                          SizedBox(height: 8),
                          Text('Bad', style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      //fine

                      Column(
                        children: [
                          EmotionFace(
                            emojiconFace: '😁',
                          ),
                          SizedBox(height: 8),
                          Text('Fine', style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      // well
                      Column(
                        children: [
                          EmotionFace(
                            emojiconFace: '☺',
                          ),
                          SizedBox(height: 8),
                          Text('Well', style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      Column(
                        children: [
                          EmotionFace(
                            emojiconFace: '😋',
                          ),
                          SizedBox(height: 8),
                          Text('Excellent ',
                              style: TextStyle(
                                color: Colors.grey[100],
                              )),
                        ],
                      ),

                      // excellent
                    ]),
              ]),
            ),
            SizedBox(height: 25),
            // Base Container
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Exercises",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          Icon(Icons.more),
                        ],
                      ),
                      SizedBox(height: 8),
                      // LISTVIEW OF EXERCISES
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                              icon: Icons.favorite,
                              exerciseName: 'Speaking Skills',
                              numberOfExercises: 16,
                              color: Colors.orange,
                            ),
                            ExerciseTile(
                              icon: Icons.person,
                              exerciseName: 'Reading Skills',
                              numberOfExercises: 8,
                              color: Colors.green,
                            ),
                            ExerciseTile(
                              icon: Icons.star,
                              exerciseName: 'Writing Skills',
                              numberOfExercises: 16,
                              color: Colors.purple,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}