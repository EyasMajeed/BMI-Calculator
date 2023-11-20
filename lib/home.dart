import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:core';

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController textEditingController = TextEditingController();

  var weight = 40;

  var result = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 29, 0, 93),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 80.0,
                ),
                Text(
                  'BMI CALCULATOR',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 59, 3, 179),
                            borderRadius: BorderRadius.circular(20.0)),
                        height: 120,
                        width: 120,
                        child: Column(
                          children: [
                            Icon(
                              Icons.male,
                              size: 80,
                              color: Colors.white,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    SizedBox(
                      width: 60,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 59, 3, 179),
                            borderRadius: BorderRadius.circular(20.0)),
                        height: 120,
                        width: 120,
                        child: Column(
                          children: [
                            Icon(
                              Icons.female,
                              size: 80,
                              color: Colors.white,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 59, 3, 179),
                        borderRadius: BorderRadius.circular(20.0)),
                    height: 150,
                    width: 300,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Height',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0),
                        ),
                        TextField(
                          controller: textEditingController,
                          decoration: InputDecoration(
                              hintText: 'Height in cm',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              filled: true,
                              fillColor: Colors.white),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 59, 3, 179),
                        borderRadius: BorderRadius.circular(20.0)),
                    height: 170,
                    width: 300,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${weight} kg",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                size: 20,
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor:
                                      Color.fromARGB(255, 0, 0, 0)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                size: 20,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
                ElevatedButton(
                  onPressed: () {
                    var height = int.parse(textEditingController.text);
                    result = weight / (height / 100 * height / 100);
                    setState(() {});
                  },
                  child: Text('Calculate'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 0, 0, 0)),
                ),
                if (result != null)
                  Text(
                    result.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'made by:Eyas',
                  style: TextStyle(color: Colors.grey, fontSize: 10.0),
                )
              ],
            ),
          ),
        ));
  }
}
