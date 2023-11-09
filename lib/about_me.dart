import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: 
         SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.91, -0.93),
              child: Icon(
                Icons.cancel_rounded,
                color: Colors.white,
                size: 28,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.88, -0.92),
              child: Text(
                'see',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.67, -0.92),
              child: Text(
                'MY WORKS',
                style: TextStyle(
                      fontFamily: 'Readex Pro',
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Align(
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
            
            Align(
              alignment: AlignmentDirectional(-0.5, -0.49),
              child: Text(
                'Available for full/Part Time \nRoles, Gigs, Contracts,Internships and Colloboration',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.22),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Text(
                  'Based in Kumasi, Ghana, I work as a software developer and UI/UX design. I\'m a computer  Engineering student at Kwame Nkrumah University of Science and Technology and have a tremendous \ninterest for technology  and invention. I am a good team player and a quick learner. \nAdditionally, I believe that effective communication is really vital   Because I have a thorough  understanding of database ideas and applications,  I primarily work on the frontend and not so bad at backend.\n        \nPlease contact me to learn more about myself.\n\nI currently work as a mobile developer at Rx health Info system as a national service personnel. A community of designers and developers that work on a lot  of proejects in order to foster continous learning and growth',
                  style:TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
            Align(
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
            Align(
              alignment: AlignmentDirectional(0.00, 0.91),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Text(
                  'I have a keen passion for various fields, including development, art and creative direction, animation and design, music, gaming, football, and the concept of minimalism.',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.87, 0.68),
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