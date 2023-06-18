import 'package:fitness_app/screens/mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 92,
                      height: 92,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(
                          width: 3,
                          color: Color(0xFF40D876),
                        ),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/images/emely.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Shivam ",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 32,
                          color: Color(0xFF40D876),
                          letterSpacing: 1.8,
                        )),
                    Text("Nagori",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 32,
                          color: Colors.white,
                          letterSpacing: 1.8,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
