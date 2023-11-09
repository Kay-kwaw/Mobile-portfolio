import 'package:flutter/material.dart';

class MyWork extends StatelessWidget {
  const MyWork({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: true,
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
                'read',
                style:TextStyle(
                  color: Colors.white,
                
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.64, -0.92),
              child: Text(
                'ABOUT ME',
                style: TextStyle(
                      fontFamily: 'Readex Pro',
                      color: Colors.amber,
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
                style: TextStyle(),
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
                  style: TextStyle(),
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
            Align(
              alignment: AlignmentDirectional(-0.25, -0.36),
              child: Text(
                'Designer & Mobile Developer',
                style: TextStyle(),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.34, -0.19),
              child: Text(
                'Flutter, MySQL, Swift, UI/Ux, Html, Css, Django',
                style: TextStyle(),
              ),
            ),
          ],
        )
        )
    );
  }
}