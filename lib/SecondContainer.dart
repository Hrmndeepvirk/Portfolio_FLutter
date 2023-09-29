import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SecondContainer extends StatefulWidget {
  const SecondContainer({super.key});

  @override
  State<SecondContainer> createState() => _SecondContainerState();
}

class _SecondContainerState extends State<SecondContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // height: 400,
      //color: Colors.lightBlueAccent,
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
    );
  }
}
