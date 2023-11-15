import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/homescreen.dart';
import 'package:portfolio/initialscreen.dart';
import 'package:portfolio/menu.dart';
import 'package:portfolio/mywork.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: 
         SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.91, -0.93),
              child: IconButton(
                icon: const Icon(Icons.cancel_rounded),
                color: Colors.white,
                iconSize: 28,
                onPressed: () => Navigator.push(context, PageTransition(type: PageTransitionType.scale, alignment: Alignment.bottomCenter, child: const HomescreenWidget())),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-0.88, -0.92),
              child: Text(
                'see',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
             Align(
              alignment: const AlignmentDirectional(-0.67, -0.92),
              child: InkWell(
                onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.scale, alignment: Alignment.bottomCenter,duration: const Duration(milliseconds: 700), child: const MyWork())),
                child: const Text(
                  'MY WORKS',
                  style: TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-0.05, -0.77),
              child: Text(
                'KWAW KUMI MIEZAH ',
                style: TextStyle(
                      fontFamily: 'Readex Pro',
                      color: Colors.amber,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            
            const Align(
              alignment: AlignmentDirectional(-0.5, -0.49),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Available for full/Part Time \nRoles, Gigs, Contracts,Internships and Colloboration',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(0.00, 0.10),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Text(
                  'Based in Accra, Ghana, I work as a Mobile dev and UI/UX design. I\'ve a tremendous \ninterest for technology  and invention. I am a good team player and a quick learner. \nAdditionally, I believe that effective communication is really vital Because I have a thorough  understanding of database ideas and applications,  I primarily work on the frontend and not so bad at backend.\n        \nPlease contact me to learn more about myself.\n',
                  style:TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-0.87, -0.59),
              child: Text(
                'CURRENT STATUS:',
                style: TextStyle(
                      fontFamily: 'Readex Pro',
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            // ignore: prefer_const_constructors
            Align(
              alignment: const AlignmentDirectional(0.00, 0.81),
              child: const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Text(
                  'I have a keen passion for various fields, including development, art and creative direction, animation and design, music, gaming, football, and the concept of minimalism.',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-0.87, 0.58),
              child: Text(
                'INTEREST:',
                style:TextStyle(
                      fontFamily: 'Readex Pro',
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            
          ],
        )
         )
    );
  }
}