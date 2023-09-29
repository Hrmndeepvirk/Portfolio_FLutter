import 'package:flutter/material.dart';
import 'package:portfolio1/SecondContainer.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio1/mobileview/MobileProjects.dart';
import 'package:portfolio1/webview/AboutScreen.dart';
import 'package:portfolio1/webview/AboutScreen1.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileContainer extends StatefulWidget {
  const MobileContainer({super.key});

  @override
  State<MobileContainer> createState() => _MobileContainerState();
}

class _MobileContainerState extends State<MobileContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Harmandeep Singh",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
              ),
              accountEmail: const Text(
                "harmandeepcse103@gmail.com",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/hrmn.jpg'),
              ),
              decoration: BoxDecoration(color: Colors.brown[500]),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.creativeCommons),
              title: Text(
                "Projects",
                style: TextStyle(
                    fontFamily: 'Audiowide',
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MobileProjects()));

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const MobileProjects()));
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.idCard),
              title: Text(
                "Resume",
                style: TextStyle(
                    fontFamily: 'Audiowide',
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                launch(
                    "https://drive.google.com/file/d/16jQ8oZXgvhnBMH-lMjMztQ3HcwGBYF7O/view?usp=drivesdk");
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.addressBook),
              title: Text(
                "Contact",
                style: TextStyle(
                    fontFamily: 'Audiowide',
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AboutScreen()));
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.person),
              title: Text(
                "About",
                style: TextStyle(
                    fontFamily: 'Audiowide',
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AboutScreen1()));
              },
            ),
          ],
        ),
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,

      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage(
                  'assets/images/hrmn.jpg',
                ),
              ),
            ),
            SizedBox(
              height: 30,
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
                            color: Colors.brown, fontWeight: FontWeight.w700)),
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
                                  MaterialStateProperty.all(Colors.brown),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(20.0),
                                          right: Radius.circular(20.0)),
                                      side: BorderSide(color: Colors.brown)))),
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
                                MaterialStateProperty.all(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.brown),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
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
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      IconButton(
                        onPressed: () async {
                          launch("linkedin.com/in/harman-deep-singh-2787721a6");
                        },
                        icon: Icon(FontAwesomeIcons.linkedinIn),
                        //child: FaIcon(FontAwesomeIcons.linkedinIn,
                        color: Colors.brown,
                      ),

                      IconButton(
                        onPressed: () async {
                          launch("https://github.com/Hrmndeepvirk");
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
    ));

    //   body: Column(
    //     children: [
    //       Row(
    //         children: [
    //           Text("hrmndeep Virk")
    //
    //         ],
    //       )
    //     ],
    //   ),
    //);
  }
}
