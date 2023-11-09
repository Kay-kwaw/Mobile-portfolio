
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/credit_screen.dart';
import 'package:portfolio/initialscreen.dart';
import 'package:portfolio/menu.dart';
import 'package:url_launcher/url_launcher.dart';

class HomescreenWidget extends StatefulWidget {
  const HomescreenWidget({Key? key}) : super(key: key);

  @override
  _HomescreenWidgetState createState() => _HomescreenWidgetState();
}

class _HomescreenWidgetState extends State<HomescreenWidget>  with SingleTickerProviderStateMixin{

  AnimationController? _controller;
  // ignore: unused_field
  Animation? _colorAnimation;

  bool isFav = false;





  final Uri _urlit = Uri.parse('https://twitter.com/KwawKumi');
  final Uri _urlb = Uri.parse('https://mail.google.com/mail/u/0/#inbox?compose=new');
  final Uri _url = Uri.parse('https://github.com/Kay-kwaw');
  final Uri _urll = Uri.parse('https://www.behance.net/kwawkumi');
  


  Future<void> _launchUrl() async {
  if (!await launchUrl(_url,)) {
    throw Exception('Could not launch $_url');
  }
}
  Future<void> _twitUrl() async {
  if (!await launchUrl(_urlit,)) {
    throw Exception('Could not launch $_url');
  }
}
  Future<void> _BehanceUrl() async {
  if (!await launchUrl(_urll,)) {
    throw Exception('Could not launch $_url');
  }
}
 
  Future<void> _GmailUrl() async {
  if (!await launchUrl(_urlb,)) {
    throw Exception('Could not launch $_url');
  }
}
 

   @override
  void initState() {
    super.initState();
     _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _controller!.addListener(() {
      setState(() {
        print(_controller!.value);
        print(_colorAnimation!.value);
      });
    });

    _controller!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
         isFav = true;
      } else if (status == AnimationStatus.dismissed) {
        isFav = false;
      }
    });

    _colorAnimation = ColorTween(begin: Colors.amber, end: Colors.white).animate(_controller!);
    
  }

  @override
  void dispose() {
   

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        child: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
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
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 70),
                                child: Container(
                                  width: 261,
                                  height: 58,
                                  decoration: BoxDecoration(
                                    color:Colors.amber,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 2),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-0.85, 0.03),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 5,
                                            shape: const CircleBorder(),
                                            child: Container(
                                              width: 48,
                                              height: 48,
                                              decoration: const BoxDecoration(
                                                color:
                                                   Colors.amber,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                shape: BoxShape.circle,
                                              ),
                                              child:  Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(15, 15, 0, 0),
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.push(context, PageTransition(type: PageTransitionType.topToBottomPop,duration: Duration(seconds: 3), child: const HomePageWidget(), childCurrent: this.widget ));

                                                  },
                                                  child: const Text(
                                                    'So',
                                                    style:
                                                        TextStyle(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color: Colors.black,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight.bold,
                                                            ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Icon(
                                            Icons.fiber_smart_record_outlined,
                                            color: Colors.black,
                                            size: 24,
                                          ),
                                        ),
                                         Align(
                                          alignment:
                                              AlignmentDirectional(0.84, 0.06),
                                          child: InkWell(
                                            onTap: () {
Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 400), child: MyWidget()));
                                            },
                                            child: Text(
                                              'menu',
                                              style: TextStyle(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                child: Text(
                  'Mobile Developer based in Accra, Ghana',
                  style: TextStyle(
                        fontFamily: 'Rubik',
                        color: Colors.white,
                      ),
                ),
              ),
               Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 70),
                  child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'I\'M THE TOURCH\n          THAT\nILLUMINATES\nTHE MOBILE WITH\n  CAPTIVATING \n   EXPERIENCES',
                      textAlign: TextAlign.end,
                      textStyle: const TextStyle(
                        fontFamily: 'PT Serif',
                        color: Colors.amber,
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                      speed: const Duration(milliseconds: 20),
                    ),
                    //   'I\'M THE TOURCH\n          THAT\nILLUMINATES\nTHE MOBILE WITH\n  CAPTIVATING \n  EXPERIENCES',
                    // textAlign: TextAlign.end,
                    // style: TextStyle(
                    //       fontFamily: 'PT Serif',
                    //       color: Colors.amber,
                    //       fontSize: 30,
                    //       fontWeight: FontWeight.w800,
                    //     ),
                  ]
                  
                  ),
                ),
              ),
              const SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.59, 0.00),
                            child: Text(
                              'Available for hire',
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.65, 0.00),
                            child: Text(
                              'Talk to me',
                              style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.amber,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.11, 0.00),
                            child: Icon(
                              Icons.album_outlined,
                              color: Colors.white70,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 120),
                child: Container(
                  width: 167,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Color(0x0B14181B),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.72, 0.00),
                        child: Container(
                          width: 126,
                          height: 34,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.amber,
                            ),
                          ),
                          child:  Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.22, 0.00),
                                child: InkWell(
                                  onTap: () {
                                    showModalBottomSheet<void>(context: context, builder: (BuildContext context) {  
                                      return Column(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text("YOU CAN REACH ME \n            HERE",
                                             style: TextStyle(
                                              fontFamily: 'Noto Serif',
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                            
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(150, 0, 0, 0),
                                            child: ListTile(
                                              title: const Text("Twitter/X", style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Noto Serif',
                                              ),),
                                              onTap: () async{
                                                _twitUrl();
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(150, 0, 0, 0),
                                            child: ListTile(
                                              title: const Text("Gmail", style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Noto Serif',
                                              ),),
                                              onTap: (){
                                                _GmailUrl();
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(150, 0, 0, 0),
                                            child: ListTile(
                                              title: const Text("Github",style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Noto Serif',
                                              ),),
                                              onTap: (){
                                                _launchUrl();
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(150, 0, 0, 0),
                                            child: ListTile(
                                              title: const Text("Behance", style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Noto Serif',
                                              ),),
                                              onTap: () async{
                                                _BehanceUrl();
                                              },
                                            ),
                                          ),
                                                  Padding(
                                                   padding: EdgeInsetsDirectional.fromSTEB(180, 30, 0, 0),
                                                   child: ListTile(
                                                               leading: Icon(Icons.cancel), // Add a different icon here
                                                               title: Text(""),
                                                               iconColor: Colors.amber,

                                                               onTap: () {
                                                                Navigator.pop(context);
                                                               },
                                                             ),
                                                 ),

                                        ],
                                      );
                                      }
                                      );    
                                  },
                                  child: const Text(
                                    'contact',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                               Align(
                                alignment: AlignmentDirectional(-0.99, 0.00),
                                child: IconButton(
                                  icon: Icon(Icons.album_rounded),
                                  color:_colorAnimation?.value,
                                  iconSize: 15, onPressed: () { 
                                    isFav = !isFav;
                                   },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                       Align(
                        alignment: AlignmentDirectional(-0.82, 1.53),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 600), child: Creditscreen()));
                          },
                          child: const Text(
                            'credits',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


