import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'ProjectsContainer.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    //launch("https://drive.google.com/file/d/16jQ8oZXgvhnBMH-lMjMztQ3HcwGBYF7O/view?usp=drivesdk");
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
                width: 10,
              ),
            ],
          ),
        ],
      ),

      //  ),
    );
  }
}
