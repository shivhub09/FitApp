import 'package:fitness_app/screens/home_view.dart';
import 'package:flutter/material.dart';
class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  final List levels = [
    "Inactive",
    "Begineer",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Text(
                  "HARD  ",
                  style:  TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.8,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Text(
                  "ELEMENT",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF40D876),
                    letterSpacing: 1.8,
                  ),
                ),
              ),
            ]),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About You",
                    style:  TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "we want to know more about you, folow the next steps\n to complete the information.",
                    style:  TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
                      height: 226,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.red,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: levels.length,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Container(
                                height: 226,
                                width: 195,
                                decoration: BoxDecoration(
                                  color: Color(0xFF232441),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 30.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "I am",
                                        style:  TextStyle(
                                          fontSize: 30,
                                          color: Color(0xFF40D876),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        levels[index],
                                        style:  TextStyle(
                                          fontSize: 30,
                                          color: Color(0xFF40D876),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Text(
                                        "I have never Trained",
                                        style:  TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 40.0, top: 40.0, bottom: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Skip Intro",
                          style:  TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeView()));
                          },
                          child: Container(
                            width: 139,
                            height: 39,
                            decoration: BoxDecoration(
                              color: Color(0xFF40D876),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Center(
                              child: Text(
                                "Next",
                                style:  TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
