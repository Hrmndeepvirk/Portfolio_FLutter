import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';


class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,


        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: Text("CONTACT ME",
                style: TextStyle(fontSize: 50,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Audiowide"),),
            ),
            const SizedBox(height: 100,) ,


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
                      const FaIcon(FontAwesomeIcons.instagram, size: 50,
                      ),
                      TextButton(onPressed: (){
                        launch("https://instagram.com/hrmndeepvirk?igshid=YTQwZjQ0NmI0OA==");
                      },
                          child: const Text("hrmndeepvirk",
                            style: TextStyle(color: Colors.brown),))
                    ],
                  ),
                  const SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        const FaIcon(FontAwesomeIcons.mobileRetro, size: 50,),
                        TextButton(onPressed: (){
                          FlutterPhoneDirectCaller.callNumber('+91 708 796 8013');
                          launch('tel:+91 708 796 8013');

                        },
                            child: const Text("+91 708 796 8013",
                              style: TextStyle(color: Colors.brown),))
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),

                  Row(
                    children: [
                      const FaIcon(FontAwesomeIcons.github, size: 50,),
                      TextButton(onPressed: (){
                        launch("https://github.com/Hrmndeepvirk");
                      },
                          child: const Text("github.com/Hrmndeepvirk",
                            style: TextStyle(color: Colors.brown),))
                    ],
                  ),
                  const SizedBox(height: 20,),

                  Row(
                    children: [
                      const Icon(Icons.mail , size: 50,),
                      TextButton(onPressed: (){
                      },
                          child: const Text("harmandeepcse103@gmail.com",
                            style: TextStyle(color: Colors.brown),)),

                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined
                        , size: 50,),
                      TextButton(onPressed: (){
                      },
                          child: const Text("Punjab,India",
                            style: TextStyle(color: Colors.brown),)),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
