
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class HomescreenWidget extends StatefulWidget {
  const HomescreenWidget({Key? key}) : super(key: key);

  @override
  _HomescreenWidgetState createState() => _HomescreenWidgetState();
}

class _HomescreenWidgetState extends State<HomescreenWidget>  with SingleTickerProviderStateMixin{
 

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
   
    
  }
  
  void _launchGitHub() async {
  const url = 'https://github.com';  // Replace with your GitHub URL
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}



  @override
  Widget build(BuildContext context) {
    // if (isiOS) {
    //   SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(
    //       statusBarBrightness: Theme.of(context).brightness,
    //       systemStatusBarContrastEnforced: true,
    //     ),
    //   );
    // }

    return Scaffold(
      key: scaffoldKey,
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
                                              child: const Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 15, 0, 0),
                                                child: Text(
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
                                        const Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Icon(
                                            Icons.fiber_smart_record_outlined,
                                            color: Colors.black,
                                            size: 24,
                                          ),
                                        ),
                                        const Align(
                                          alignment:
                                              AlignmentDirectional(0.84, 0.06),
                                          child: Text(
                                            'menu',
                                            style: TextStyle(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
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
              const Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 70),
                  child: Text(
                    'I\'M THE TOURCH\n          THAT\nILLUMINATES\nTHE MOBILE WITH\n  CAPTIVATING \n  EXPERIENCES',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                          fontFamily: 'PT Serif',
                          color: Colors.amber,
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
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
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("YOU CAN REACH ME \n             HERE",
                                             style: TextStyle(
                                              fontFamily: 'Noto Serif',
                                              fontSize: 25,
                                              // fontWeight: FontWeight.bold,
                                            ),),
                                            
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(170, 0, 0, 0),
                                            child: ListTile(
                                              title: const Text("Twitter"),
                                              onTap: (){
                                                
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(170, 0, 0, 0),
                                            child: ListTile(
                                              title: const Text("Gmail"),
                                              onTap: (){
                                                
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(170, 0, 0, 0),
                                            child: ListTile(
                                              title: const Text("Github"),
                                              onTap: (){
                                                "https://github.com/Kay-kwaw";
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(170, 0, 0, 0),
                                            child: ListTile(
                                              title: Text("Behance"),
                                              onTap: (){
                                                
                                              },
                                            ),
                                          ),
                                                  Padding(
                                                   padding: EdgeInsetsDirectional.fromSTEB(190, 30, 0, 0),
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
                                alignment: AlignmentDirectional(-0.69, 0.00),
                                child: Icon(
                                  Icons.album_rounded,
                                  color: Colors.amber,
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-0.82, 1.53),
                        child: Text(
                          'credits',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
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
