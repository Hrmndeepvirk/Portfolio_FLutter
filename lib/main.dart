import 'package:flutter/material.dart';
import 'package:portfolio1/container1.dart';
import 'package:portfolio1/container2.dart';
import 'package:portfolio1/mobileContainer.dart';
import 'package:responsive_builder/responsive_builder.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,

         home: ResponsiveBuilder(builder: (context , SizingInformation)
         {
           if(SizingInformation.deviceScreenType == DeviceScreenType.mobile){
             return MobileContainer();
               //Container(color: Colors.red);
           }
           if(SizingInformation.deviceScreenType == DeviceScreenType.desktop){
             return Container1();
               //Container(color: Colors.indigo,);
           }
           return Container(color: Colors.lightGreen,);
         }),
       //Container1(),

       //  Scaffold(
           // body:
           // SingleChildScrollView(
           //     child: Container(
           //       child: Row(
           //         children: [
           //         Container1(),
           //        Container2()
           //       ]
           //   )
           //     )
           // )
       //  )
     );

}}
