import 'package:flutter/material.dart';

class MobileProjects extends StatefulWidget {
  const MobileProjects({super.key});

  @override
  State<MobileProjects> createState() => _MobileProjectsState();
}

class _MobileProjectsState extends State<MobileProjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SafeArea(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    "PROJECTS",
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Audiowide'),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      boxShadow: [
                        const BoxShadow(blurRadius: 5.0, offset: Offset(0, 5)),
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
                          const Icon(
                            Icons.account_circle_sharp,
                            color: Colors.white,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Examination Seating Planning Maker",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Audiowave',
                                  color: Colors.white60),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "The application enables users to generate seating plans for "
                            "examinations and allocate seats to students based on"
                            "various parameters such as class, department, and subject. The application also provides real- time updates on seat"
                            "availability, student attendance, and other important"
                            "information to ensure smooth and hassle-free examinations.\n\n"
                            "Technology Used : Java, Android Studio and Firebase.",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      boxShadow: [
                        const BoxShadow(blurRadius: 5.0, offset: Offset(0, 5)),
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
                          const Icon(Icons.account_circle_sharp),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Chatbot",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Audiowave',
                                  color: Colors.white),
                            ),
                          ),
                          const Text(
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
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      boxShadow: [
                        const BoxShadow(blurRadius: 5.0, offset: Offset(0, 5)),
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
                          const Icon(
                            Icons.account_circle_sharp,
                            color: Colors.white,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Productivity Management System(Minor Project)",
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Audiowave'),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// class MobileProjects extends StatefulWidget {
//   const MobileProjects({super.key});
//
//   @override
//   State<MobileProjects> createState() => _MobileProjectsState();
// }
//
// class _MobileProjectsState extends State<MobileProjects> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//
//
//       child: SingleChildScrollView(
//         child: Row(
//           //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//
//             Padding(
//               padding: const EdgeInsets.all(50.0),
//               child: Text("PROJECTS",
//                 style: TextStyle(fontSize: 20,
//                     fontWeight: FontWeight.w600,
//                     fontFamily: "Audiowide"),),
//             ),
//   ]  ) ));
// //
// //            Column(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: [
// //                 Container(
// //                   decoration: BoxDecoration(
// //                     color: Colors.brown,
// //                     boxShadow: [BoxShadow(
// //                         blurRadius: 5.0,
// //                         offset: Offset(0,5)
// //                     ),],
// //                     borderRadius: BorderRadius.circular(30.0),),
// //                   height: 350,
// //                   width: 290,
// //                   //  color: Colors.white,
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(18.0),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Icon(Icons.account_circle_sharp,
// //                           color: Colors.white,),
// //                         TextButton(onPressed: (){},
// //                           child: Text("Examination Seating Planning Maker" ,
// //                             style: TextStyle( fontWeight: FontWeight.w500,
// //                                 fontFamily: 'Audiowave', color: Colors.white60),),),
// //
// //                         SizedBox(height: 10,),
// //                         Text("The application enables users to generate seating plans for "
// //                             "examinations and allocate seats to students based on"
// //                             "various parameters such as class, department, and subject. The application also provides real- time updates on seat"
// //                             "availability, student attendance, and other important"
// //                             "information to ensure smooth and hassle-free examinations.\n\n"
// //                             "Technology Used : Java, Android Studio and Firebase." ,
// //                           style: TextStyle(color: Colors.white),
// //                           textAlign: TextAlign.justify,)
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.brown,
//                     boxShadow: [BoxShadow(
//                         blurRadius: 5.0,
//                         offset: Offset(0,5)
//                     ),],
//                     borderRadius: BorderRadius.circular(30.0),),
//                   height: 350,
//                   width: 290,
//                   //color: Colors.white,
//                   child: Padding(
//                     padding: const EdgeInsets.all(18.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Icon(Icons.account_circle_sharp,
//                           color: Colors.white,),
//                         TextButton(onPressed: (){},
//                           child: Text("Productivity Management System(Minor Project)" ,
//                             style: TextStyle(  color: Colors.white60, fontWeight: FontWeight.w500,fontFamily: 'Audiowave'),),
//                         ),
//                         SizedBox(height: 10,),
//                         Text("Technologies Used : Java Swing, Java and MySql.\n"
//                             "Create, delete and update tasks and notes\n"
//                             "Focus mode Timer"
//                             "Play Lofi Music for relaxation.",
//                             style: TextStyle(  color: Colors.white,)),
//                       ],
//                     ),
//                   ),
//                 ),

// Container(
//   decoration: BoxDecoration(
//     color: Colors.brown,
//     boxShadow: [BoxShadow(
//         blurRadius: 5.0,
//         offset: Offset(0,5)
//     ),],
//     borderRadius: BorderRadius.circular(30.0),),
//   height: 350,
//   width: 290,
//   //  color: Colors.white,
//   child: Padding(
//     padding: const EdgeInsets.all(18.0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Icon(Icons.account_circle_sharp),
//         TextButton(onPressed: (){},
//           child: Text("Chatbot" ,style: TextStyle( fontWeight: FontWeight.w900,
//               fontFamily: 'Audiowave',color: Colors.white),
//           ),
//         ),
//         Text("ChatGPT which interacts in a conversational way."
//             "The dialogue format makes it possible for ChatGPT"
//             "to answerfollowup questions, admit its mistakes,"
//             "challenge incorrect premises, and reject inappropriate requests.\n"
//             "\nTechnology Used : Java(Programming Language), Okhttp(API Calling),"
//             "Recycler View(For Displaying Chat Messages",
//           textAlign: TextAlign.justify,
//           style: TextStyle(color: Colors.white),
//         )
//       ],
//     ),
//   ),
//         // ),
//       ],
//     )
//   ],
// ),
// //       ),
//     //  color: Colors.white60,
//
//   }
// }
