import 'package:flutter/material.dart';
import 'package:task_abdeldmohsen/Screens/SecondPage.dart';
import 'package:task_abdeldmohsen/core/Constans/Font.dart';
import 'package:task_abdeldmohsen/core/Constans/color_schemes.g.dart';
import 'package:task_abdeldmohsen/core/Constans/image.dart';

class MainScreen extends StatefulWidget {
  MainScreen({
    super.key,
    required this.numOfAdults,
    required this.numOfChildren,
    required this.numOfRooms,
  });
  final int numOfAdults;
  final int numOfChildren;
  final int numOfRooms;
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  DateTimeRange dateTimeRange = DateTimeRange(
    start: (DateTime(
      2023,
      11,
      11,
    )),
    end: DateTime(
      2024,
      12,
      31,
    ),
  );
  List<String> menuListCity = [
    "Select City",
    "Cairo",
    "London",
    "New York",
    "Paris",
    "Tokyo",
    "Dubai",
    "Los Angeles",
    "Rome",
    "Sydney",
    "Barcelona"
  ];
  String selectedvalueCity = "Select City";
  List<String> menuListNationality = [
    "Nationality",
    "Chinese 🇨🇳",
    "Indian 🇮🇳"
        "American 🇺🇸",
    "Russian 🇷🇺",
    "Japanese 🇯🇵",
    "German 🇩🇪",
    "Brazilian 🇧🇷",
    "French 🇫🇷",
    "British 🇬🇧"
  ];
  String selectedvalueNationality = "Nationality";

  @override
  Widget build(BuildContext context) {
    final start = dateTimeRange.start;
    final end = dateTimeRange.end;
    ;

    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
            image: AssetImage(
              "${ImageAssets.imagebackground}",
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              children: [
                // red  contanier
                Container(
                  width: MediaQuery.sizeOf(context).width - 10,
                  height: MediaQuery.sizeOf(context).height * .6,
                  decoration: BoxDecoration(
                    color: lightColorScheme.error,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search_sharp,
                          color: Colors.black,
                        ),
                        label: Text(
                          "Find Hotle",
                          style: getRegulerTextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
                //blue contanier

                Positioned(
                  bottom: MediaQuery.sizeOf(context).height * .1,
                  child: Container(
                    width: MediaQuery.sizeOf(context).width - 10,
                    height: MediaQuery.sizeOf(context).height * .5,
                    decoration: BoxDecoration(
                      color: lightColorScheme.tertiary,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: lightColorScheme.onPrimary,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                15,
                              ),
                            ),
                          ),
                          width: MediaQuery.sizeOf(context).width * .9,
                          height: MediaQuery.sizeOf(context).height * .1,
                          child: Center(
                            child: DropdownButtonFormField(
                              focusColor: lightColorScheme.onPrimary,
                              decoration: InputDecoration(
                                fillColor: lightColorScheme.onPrimary,
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      15,
                                    ),
                                  ),
                                ),
                              ),
                              value: selectedvalueCity,
                              items: menuListCity
                                  .map(
                                    (itme) => DropdownMenuItem<String>(
                                      value: itme,
                                      child: Text(itme),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (newValue) {
                                fetchCity(newValue!);
                              },
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => fetchDateRange(),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * .1,
                            width: MediaQuery.sizeOf(context).width * .9,
                            decoration: BoxDecoration(
                              color: lightColorScheme.onPrimary,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "start: ${start.year}/${start.month}/${start.day} ___ End: ${end.year}/${end.month}/${end.day}",
                                style: getLightTextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: lightColorScheme.onPrimary,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                15,
                              ),
                            ),
                          ),
                          width: MediaQuery.sizeOf(context).width * .9,
                          height: MediaQuery.sizeOf(context).height * .1,
                          child: Center(
                            child: DropdownButtonFormField(
                              focusColor: lightColorScheme.onPrimary,
                              decoration: InputDecoration(
                                fillColor: lightColorScheme.onPrimary,
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      15,
                                    ),
                                  ),
                                ),
                              ),
                              value: selectedvalueNationality,
                              items: menuListNationality
                                  .map(
                                    (itme) => DropdownMenuItem<String>(
                                      value: itme,
                                      child: Text(itme),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (newValueNationality) {
                                fetchNationality(newValueNationality!);
                              },
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SecondScreen(),
                                ));
                          },
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * .1,
                            width: MediaQuery.sizeOf(context).width * .9,
                            decoration: BoxDecoration(
                              color: lightColorScheme.onPrimary,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                // "$receivedArguments",
                                """ Rooms:${widget.numOfChildren},Adults:${widget.numOfAdults},Children:${widget.numOfChildren},""",
                                style: getMediumTextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future fetchDateRange() async {
    DateTimeRange? newDateRang = await showDateRangePicker(
      context: context,
      // initialDateRange: dateTimeRange,
      firstDate: DateTime(2022),
      lastDate: DateTime(2025),
    );
    if (newDateRang == null)
      return;
    else {
      setState(() {
        dateTimeRange = newDateRang;
      });
    }
  }

  void fetchCity(String newValue) {
    setState(() {
      selectedvalueCity = newValue;
    });
  }

  void fetchNationality(String Nationality) {
    setState(() {
      selectedvalueNationality = Nationality;
    });
  }
}
