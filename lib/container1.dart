import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio1/webview/AboutScreen.dart';
import 'package:portfolio1/webview/AboutScreen1.dart';
//import 'package:portfolio1/main.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../ProjectsContainer.dart';
import '../SecondContainer.dart';
import '../container2.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                // height: 60,

                //  color: Colors.deepOrange,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 210,
                      height: 60,
                      child: Image(
                          image: AssetImage(
                        'assets/images/name.png',
                      )),
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => const ProjectContainer()),
                              // );
                            },
                            child: Text("PROJECTS",
                                style: TextStyle(
                                    fontFamily: 'Audiowave',
                                    color: Colors.brown,
                                    fontWeight: FontWeight.w700))),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              launch("https://drive.google.com/file/d/16jQ8oZXgvhnBMH-lMjMztQ3HcwGBYF7O/view?usp=drivesdk");
                            },
                            child: Text('RESUME',
                                style: TextStyle(
                                    fontFamily: 'Audiowave',
                                    color: Colors.brown,
                                    fontWeight: FontWeight.w700))),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text('CONTACT',
                                style: TextStyle(
                                    fontFamily: 'Audiowave',
                                    color: Colors.brown,
                                    fontWeight: FontWeight.w700))),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text('ABOUT',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontFamily: 'Audiowave',
                                    fontWeight: FontWeight.w700))),
                        SizedBox(
                          width: 20,
                          height: 50,
                        ),
                      ],
                    ),
                  ],
                ),

                //  ),
              ),
              SizedBox(
                height: 60,
              ),

              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,

                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: CircleAvatar(
                          radius: 150,
                          backgroundImage: AssetImage(
                            'assets/images/hrmn.jpg',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Hello, I'm",
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontWeight: FontWeight.w700)),
                              Text("HarmanDeep",
                                  style: TextStyle(
                                      color: Colors.brown[10],
                                      fontWeight: FontWeight.w700,
                                      fontSize: 40)),
                              AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                    'Frontend Developer',
                                    textStyle: const TextStyle(
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    // speed: const Duration(milliseconds: 1000),
                                  ),
                                  TypewriterAnimatedText(
                                    'Flutter Developer',
                                    textStyle: const TextStyle(
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    //    speed: const Duration(microseconds: 5),
                                  ),
                                  TypewriterAnimatedText(
                                    'Writer',
                                    textStyle: const TextStyle(
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    //   speed: const Duration(milliseconds: 2000),
                                  ),
                                ],
                                totalRepeatCount: 10,
                                pause: const Duration(milliseconds: 1000),
                                displayFullTextOnTap: true,
                                stopPauseOnTap: true,
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () async {
                                      //  final url = Uri.parse("https://drive.google.com/file/d/16jQ8oZXgvhnBMH-lMjMztQ3HcwGBYF7O/view?usp=drivesdk");
                                      launch(
                                          "https://drive.google.com/file/d/16jQ8oZXgvhnBMH-lMjMztQ3HcwGBYF7O/view?usp=drivesdk");
                                    },
                                    child: Text(
                                      "Download CV",
                                      style: TextStyle(
                                          color: Colors.brown,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all(
                                                Colors.brown),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.horizontal(
                                                    left: Radius.circular(20.0),
                                                    right:
                                                        Radius.circular(20.0)),
                                                side: BorderSide(
                                                    color: Colors.brown)))),
                                  ),
                                  SizedBox(width: 5),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Contact Info",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.brown),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(20.0),
                                          right: Radius.circular(20.0),
                                        ),
                                      )),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        launch(
                                            "linkedin.com/in/harman-deep-singh-2787721a6");
                                      },
                                      icon: Icon(FontAwesomeIcons.linkedinIn),
                                      //child: FaIcon(FontAwesomeIcons.linkedinIn,
                                      color: Colors.brown,
                                    ),

                                    IconButton(
                                      onPressed: () async {
                                        launch(
                                            "https://github.com/Hrmndeepvirk");
                                      },
                                      icon: Icon(FontAwesomeIcons.github),
                                      //child: FaIcon(FontAwesomeIcons.linkedinIn,
                                      color: Colors.brown,
                                    ),

                                    //
                                    // TextButton(onPressed: (){
                                    //   launch("https://github.com/Hrmndeepvirk");
                                    // },
                                    //     child: FaIcon(FontAwesomeIcons.github,
                                    //   color: Colors.brown,)),
                                  ]),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // FirstContainer(),

              SizedBox(
                height: 100,
              ),

              //   SecondContainer(),

              const Divider(
                thickness: 20.0,
              ),

              // Container(
              //   height: MediaQuery.of(context).size.height,
              //   width: MediaQuery.of(context).size.width,
              //   color: Colors.white38,
              //
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //
              //     children: [
              //      AboutScreen1(),
              //       SizedBox(width: 20,),
              //     ],
              //   ),
              // ),

              //  AboutScreen1(),

              const Divider(
                thickness: 20.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(100.0),
                      child: Text(
                        "PROJECTS",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Audiowide"),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            boxShadow: [
                              BoxShadow(blurRadius: 5.0, offset: Offset(0, 5)),
                            ],
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          height: 350,
                          width: 290,
                          //  color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.account_circle_sharp,
                                  color: Colors.white,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Examination Seating Planning Maker",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Audiowave',
                                        color: Colors.white60),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "The application enables users to generate seating plans for "
                                  "examinations and allocate seats to students based on"
                                  "various parameters such as class, department, and subject. The application also provides real- time updates on seat"
                                  "availability, student attendance, and other important"
                                  "information to ensure smooth and hassle-free examinations.\n\n"
                                  "Technology Used : Java, Android Studio and Firebase.",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.justify,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            boxShadow: [
                              BoxShadow(blurRadius: 5.0, offset: Offset(0, 5)),
                            ],
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          height: 350,
                          width: 290,
                          //color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.account_circle_sharp,
                                  color: Colors.white,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Productivity Management System(Minor Project)",
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Audiowave'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    "Technologies Used : Java Swing, Java and MySql.\n"
                                    "Create, delete and update tasks and notes\n"
                                    "Focus mode Timer"
                                    "Play Lofi Music for relaxation.",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            boxShadow: [
                              BoxShadow(blurRadius: 5.0, offset: Offset(0, 5)),
                            ],
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          height: 350,
                          width: 290,
                          //  color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.account_circle_sharp),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Chatbot",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Audiowave',
                                        color: Colors.white),
                                  ),
                                ),
                                Text(
                                  "ChatGPT which interacts in a conversational way."
                                  "The dialogue format makes it possible for ChatGPT"
                                  "to answerfollowup questions, admit its mistakes,"
                                  "challenge incorrect premises, and reject inappropriate requests.\n"
                                  "\nTechnology Used : Java(Programming Language), Okhttp(API Calling),"
                                  "Recycler View(For Displaying Chat Messages",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                color: Colors.white60,
              ),
              // ProjectContainer(),

              const Divider(thickness: 20),

              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text(
                        "CONTACT ME",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Audiowide"),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.instagram,
                                size: 50,
                              ),
                              TextButton(
                                  onPressed: () {
                                    launch(
                                        "https://instagram.com/hrmndeepvirk?igshid=YTQwZjQ0NmI0OA==");
                                  },
                                  child: Text(
                                    "hrmndeepvirk",
                                    style: TextStyle(color: Colors.brown),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                FaIcon(
                                  FontAwesomeIcons.mobileRetro,
                                  size: 50,
                                ),
                                TextButton(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber(
                                          '+91 708 796 8013');
                                      launch('tel:+91 708 796 8013');
                                    },
                                    child: Text(
                                      "+91 708 796 8013",
                                      style: TextStyle(color: Colors.brown),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.github,
                                size: 50,
                              ),
                              TextButton(
                                  onPressed: () {
                                    launch("https://github.com/Hrmndeepvirk");
                                  },
                                  child: Text(
                                    "github.com/Hrmndeepvirk",
                                    style: TextStyle(color: Colors.brown),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.mail,
                                size: 50,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "harmandeepcse103@gmail.com",
                                    style: TextStyle(color: Colors.brown),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 50,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Punjab,India",
                                    style: TextStyle(color: Colors.brown),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // AboutScreen1(),
              const Divider(thickness: 20),

              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // height: 400,
                // width: 400,
                child: const SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SafeArea(
                          child: Center(
                            child: Text('ABOUT ME',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontFamily: 'Audiowave',
                                    fontWeight: FontWeight.w900,
                                    fontSize: 40)),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 100.0, left: 20, right: 20),
                          child: Text(
                              "A dedicated Front-end Developer based in Punjab,India",
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20)),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 50.0, left: 20, right: 20),
                          child: Text(
                              "I'm Flutter Developer Designer Android Developer \n"
                              'As a mobile application developer,\n'
                              'I specialize in creating apps using the'
                              'Flutter framework \n with Dart programming language,'
                              'as well as Java. I am dedicated and hardworking,\n'
                              'committed to delivering high-quality mobile applications..',
                              style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
