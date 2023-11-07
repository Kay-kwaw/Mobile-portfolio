
import 'package:flutter/material.dart';


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
      body: SafeArea(
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
                child: const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: Text(
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
            const Text(
              'click to access portfolio',
              style: TextStyle(
                fontFamily: 'Noto Serif',
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
