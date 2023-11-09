import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/about_me.dart';
import 'package:portfolio/homescreen.dart';
import 'package:portfolio/initialscreen.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor: Colors.black,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(-0.03, -0.36),
              child: InkWell(
                onTap: () {
Navigator.push(context, PageTransition(type: PageTransitionType.scale, alignment: Alignment.bottomCenter,duration: Duration(seconds: 2), child: AboutMe()));
  
                },
                child: const Text(
                  'About Me',
                  style: TextStyle(
                    fontFamily: 'PT Serif',
                    fontSize: 28,
                    color: Color.fromARGB(255, 128, 121, 121),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-0.04, -0.15),
              child: Text(
                'My Works',
                style: TextStyle(
                  fontFamily: 'PT Serif',
                    fontSize: 28,
                    color: Color.fromARGB(255, 128, 121, 121),
                ),
              ),
            ),
             Align(
              alignment: AlignmentDirectional(-0.02, 0.07),
              child: InkWell(
                onTap: (){
                 Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 400), child: HomescreenWidget()));

                },
                child: Text(
                  'Home',
                  style: TextStyle(
                    fontFamily: 'PT Serif',
                      fontSize: 28,
                      color: Color.fromARGB(255, 128, 121, 121),
                  ),
                ),
              ),
            ),
              Align(
              alignment: AlignmentDirectional(-0.04, -0.80),
              child: IconButton(
                icon: Icon(Icons.cancel_rounded),
                color: Colors.white,
                iconSize: 35,
                onPressed: () {
Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 600), child: HomescreenWidget()));

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}