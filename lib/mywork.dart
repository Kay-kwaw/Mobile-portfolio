import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/about_me.dart';
import 'package:portfolio/homescreen.dart';
import 'package:portfolio/initialscreen.dart';

class MyWork extends StatelessWidget {
  const MyWork({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.91, -0.93),
              child: IconButton(
                icon: const Icon(Icons.cancel_rounded),
                color: Colors.white,
                iconSize: 28,
                onPressed: (){
                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 400), child: const HomescreenWidget()));

                },
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-0.88, -0.92),
              child: Text(
                'read',
                style:TextStyle(
                  color: Colors.white,
                
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.64, -0.92),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, PageTransition(type: PageTransitionType.scale, alignment: Alignment.bottomCenter,duration: Duration(milliseconds: 700), child: AboutMe()));

                },
                child: const Text(
                  'ABOUT ME',
                  style: TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Colors.amber,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.05, -0.77),
              child: Text(
                'MY WORKS',
                style:TextStyle(
                      fontFamily: 'Readex Pro',
                      color: Colors.amber,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.65, -0.49),
              child: Text(
                'THIS is the version 1.0 of my portfolio. ',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.87, -0.26),
              child: Text(
                'Tools: ',
                style: TextStyle(
                      fontFamily: 'Readex Pro',
                      color: Colors.amber,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.82, -0.59),
              child: Text(
                'PORTFOLIO 1.0',
                style: TextStyle(
                      fontFamily: 'Readex Pro',
                      color: Colors.amber,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.30, 0.10),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                child: Text(
                  'For More of my works see my GITHUB or BEHANCE',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.87, -0.36),
              child: Text(
                'Role:',
                style: TextStyle(
                      fontFamily: 'Readex Pro',
                      color: Colors.amber,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-0.35, -0.36),
              child: Text(
                'Designer & Mobile Developer',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-0.50, -0.19),
              child: Text(
                'Flutter, MySQL, Swift, UI/Ux, Html, Css, Django',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ],
        )
        )
    );
  }
}