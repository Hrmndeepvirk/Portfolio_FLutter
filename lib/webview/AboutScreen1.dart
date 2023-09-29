import 'package:flutter/material.dart';

class AboutScreen1 extends StatelessWidget {
  const AboutScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // height: 400,
          // width: 400,
          child: const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text('ABOUT ME',
                        style: TextStyle(color: Colors.brown,fontFamily: 'Audiowave', fontWeight: FontWeight.w900,
                            fontSize: 40)),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 100.0, left: 20, right: 20),
                    child: Text("A dedicated Front-end Developer based in Punjab,India",
                        style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w900,
                            fontSize: 20)),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 50.0, left: 20, right: 20),
                    child: Text(
                        "I'm Flutter Developer Designer Android Developer \n"
                            'As a mobile application developer,\n'
                            'I specialize in creating apps using the'
                            'Flutter framework \n with Dart programming language,'
                            'as well as Java. I am dedicated and hardworking,\n'
                            'committed to delivering high-quality mobile applications..',
                        style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w900,
                          fontSize: 15,
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
