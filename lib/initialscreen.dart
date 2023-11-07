
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/homescreen.dart';


class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    
  }

  @override
  void dispose() {
   

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: AnimatedContainer(
         duration: const Duration(milliseconds: 300),
        child: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 300),
                          child: Container(
                            width: 234,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.fiber_smart_record,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                child: Container(
                  width: 77,
                  height: 68,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                    shape: BoxShape.rectangle,
                  ),
                  child:  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                    child: InkWell(
                      onTap: () {
                         Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomescreenWidget()),);
                      },
                      child: const Text(
                        'So',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                              fontFamily: 'Noto Serif',
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
                Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomescreenWidget()),
              );
                  },
                  child: 
                  AnimatedTextKit(
                   animatedTexts: [
                      TypewriterAnimatedText(
                      'click to access portfolio',
                      textStyle: const TextStyle(
                            fontFamily: 'Noto Serif',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                   ],
                  ),
                  // Text(
                  //   'click to access portfolio',
                  //   style: TextStyle(
                  //     fontFamily: 'Noto Serif',
                  //     color: Colors.white,
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.w600,
                  //   ),
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
