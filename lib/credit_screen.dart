import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/homescreen.dart';

class Creditscreen extends StatelessWidget {
  const Creditscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor: Colors.black,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(-0.81, -0.73),
              child: Text(
                'CREDITS',
                style: TextStyle(
                          fontFamily: 'PT Serif',
                          color: Colors.amber,
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-0.74, -0.5),
              child: Text(
                'DESIGN CONCEPT &\nART DIRECTION',
                style: TextStyle(
                          fontFamily: 'PT Serif',
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.81, -0.90),
              child: IconButton(
                icon: Icon(Icons.cancel_rounded),
                color: Colors.white,
                iconSize: 28,
                onPressed: () {
                Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: const Duration(milliseconds: 600), child: HomescreenWidget()));

                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.1, -0.30),
              child: Text("This design concept is inspired by the works of\nSamuel Osei",style: TextStyle(
                color: Colors.white,
                fontSize: 16
              ),),
            ),
            Align(
              alignment: AlignmentDirectional(-0.50, -0.1),
              child: Text(
                'DEVELOPMENT & ANIMATION',
                style: TextStyle(
                          fontFamily: 'PT Serif',
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.83, -0.0),
              child: Text("Myself",style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),),
            ),
            Align(
              alignment: AlignmentDirectional(-0.80, 0.2),
              child: Text(
                'TOOLS',
                style: TextStyle(
                          fontFamily: 'PT Serif',
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.80, 0.29),
              child: Text("Flutter",style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),),
            ),
            Align(
              alignment: AlignmentDirectional(-0.80, 0.46),
              child: Text(
                'TYPEFACE',
                style: TextStyle(
                          fontFamily: 'PT Serif',
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.75, 0.56),
              child: Text("Readex Pro, PT Serif",style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),),
            ),
            
          ]
        )
      )
    );
  }
}