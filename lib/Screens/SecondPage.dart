import 'package:flutter/material.dart';
import 'package:task_abdeldmohsen/Screens/Main_Screen.dart';
import 'package:task_abdeldmohsen/core/Constans/Font.dart';
import 'package:task_abdeldmohsen/core/Constans/color_schemes.g.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondScreen> {
  bool valueSwitch = false;
  int numOfRooms = 0;
  int numOfAdults = 0;
  int numOfChildren = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * .1,
                    width: MediaQuery.sizeOf(context).width * .1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Room"),
                        IconButton.filled(
                            onPressed: () {
                              setState(() {
                                numOfRooms++;
                              });
                            },
                            icon: Icon(
                              Icons.add_box_outlined,
                            )),
                        Text("${numOfRooms}"),
                        IconButton.filled(
                            onPressed: () {
                              setState(() {
                                if (numOfRooms > 0) {
                                  numOfRooms--;
                                }
                              });
                            },
                            icon: Icon(Icons.indeterminate_check_box_outlined))
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * .5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text("Room"),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Adults"),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * .2,
                            ),
                            IconButton.filled(
                                onPressed: () {
                                  setState(() {
                                    numOfAdults++;
                                  });
                                },
                                icon: Icon(Icons.add_box_outlined)),
                            SizedBox(
                              width: 10,
                            ),
                            Text("${numOfAdults}"),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton.filled(
                                onPressed: () {
                                  setState(() {
                                    if (numOfAdults > 0) {
                                      numOfAdults--;
                                    }
                                  });
                                },
                                icon: Icon(
                                    Icons.indeterminate_check_box_outlined)),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Children"),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * .2,
                            ),
                            IconButton.filled(
                                onPressed: () {
                                  setState(() {
                                    numOfChildren++;
                                  });
                                },
                                icon: Icon(Icons.add_box_outlined)),
                            SizedBox(
                              width: 10,
                            ),
                            Text("${numOfChildren}"),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton.filled(
                                onPressed: () {
                                  setState(() {
                                    if (numOfChildren > 0) {
                                      numOfChildren--;
                                    }
                                  });
                                },
                                icon: Icon(
                                    Icons.indeterminate_check_box_outlined)),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Age Of Child 1"),
                            Text(
                              "Age Of Child 2",
                              style: getLightTextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Age Of Child 2"),
                            Text(
                              "Age Of Child 2",
                              style: getLightTextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * .1,
                    width: MediaQuery.sizeOf(context).width * .1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Pet-Friendly"),
                        Switch(
                          value: valueSwitch,
                          onChanged: (value) {
                            setState(() {
                              valueSwitch = !valueSwitch;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => lightColorScheme.primary)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(

numOfRooms:numOfRooms,
numOfAdults:numOfAdults,
numOfChildren:numOfChildren

                      ),)                        );

                      print("numOfRooms $numOfRooms");

                      print("numOfAdults $numOfAdults");

                      print("numOfChildren $numOfChildren");
                    },
                    child: Text(
                      "Apply",
                      style: getBoldTextStyle(color: Colors.white),
                    ))
              ]),
        ),
      ),
    );
  }
}
