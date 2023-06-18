import 'package:fitness_app/screens/mode.dart';
import 'package:fitness_app/screens/myprofile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List catego = [
    Category(imageUrl: "assets/images/emily.png", name: "Yoga exercises"),
    Category(imageUrl: "assets/images/sule.png", name: "Example exercises"),
    Category(imageUrl: "assets/images/alexsandra.png", name: "Yoga exercises"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image3.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hey,",
                          style: GoogleFonts.bebasNeue(
                            fontSize: 32,
                            color: Colors.white,
                            letterSpacing: 1.8,
                          ),
                        ),
                        Text(
                          "SHIVAM",
                          style: GoogleFonts.bebasNeue(
                            fontSize: 32,
                            color: Color(0xFF40D876),
                            letterSpacing: 1.8,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyProfile()));
                      },
                      child: Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            border: Border.all(
                              width: 3,
                              color: Color(0xFF40D876),
                            ),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage("assets/images/emely.jpg"),
                              fit: BoxFit.cover,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white54.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Center(
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFF40D876),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.play_arrow,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Find ",
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            color: Color(0xFF40D876),
                            letterSpacing: 1.8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "your Workout",
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            color: Colors.white,
                            letterSpacing: 1.8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.filter_alt_outlined,
                      size: 40,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 20.0),
                child: Container(
                  width: 353,
                  height: 46,
                  decoration: BoxDecoration(
                    color: Color(0xFF232441),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                      ),
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        hintText: "Search Workout",
                        // ignore: prefer_const_constructors
                        hintStyle: TextStyle(
                          color: Colors.white54,
                          fontSize: 15,
                        ),
                        border: InputBorder.none,
                        // ignore: prefer_const_constructors
                        icon: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Text(
                        "Popular",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "Hard Workout",
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Full Body",
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Crossfit",
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Popular Workout",
                      style: GoogleFonts.lato(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 210,
                // color: Colors.amber,
                child: ListView.builder(
                    itemCount: catego.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Container(
                                height: 172,
                                width: 141,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(catego[index].imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(catego[index].name,
                                style: TextStyle(
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
