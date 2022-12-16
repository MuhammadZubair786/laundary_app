
import 'package:bus_tracking_app/Utility/BHColors.dart';
import 'package:bus_tracking_app/Utility/BHWidgets.dart';
import 'package:bus_tracking_app/Login/loginscreen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';




class BHWalkThroughScreen extends StatefulWidget {
  static String tag = '/WalkThroughScreen';

  @override
  BHWalkThroughScreenState createState() => BHWalkThroughScreenState();
}

class BHWalkThroughScreenState extends State<BHWalkThroughScreen> {
  PageController _pageController = PageController();
  int currentPage = 0;
  static const _kDuration = const Duration(seconds: 1);
  static const _kCurve = Curves.ease;

  @override
  void initState() {
    super.initState();
    changeStatusColor(Colors.transparent);
  }

  @override
  void dispose() {
    super.dispose();
    // changeStatusColor(appStore.isDarkModeOn ? scaffoldDarkColor : white);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (i) {
              currentPage = i;
              setState(() {});
            },
            children: [
              Column(
                children: <Widget>[
                  commonCacheImageWidget("images/spl1.jfif", context.height() * 0.7, width: context.width(), fit: BoxFit.cover),
                  16.height,
                  Text(
                    "Live Tracking And All Facilaties Aviable In university Bus",
                    textAlign: TextAlign.center,
                    style: boldTextStyle(
                      color: Color.fromARGB(255, 4, 72, 128),
                   
                      size: 20),
                  ),
                
                ],
              ),
              Column(
                children: <Widget>[
                  commonCacheImageWidget("images/spl2.jpg", context.height() * 0.7, width: context.width(), fit: BoxFit.cover),
                  16.height,
                  Text(
                         "Pick the time slot And Select Bus ",
                    
                    textAlign: TextAlign.center,
                    style: boldTextStyle(
                      color: Color.fromARGB(255, 4, 72, 128),
                       size: 20),
                  ),
                 
                ],
              ),
              Column(
                children: <Widget>[
                  commonCacheImageWidget("images/spl3.jfif", context.height() * 0.7, width: context.width(), fit: BoxFit.cover),
                  16.height,
                  Text(
                   "All Facilaties Aviable In university Bus",
                    textAlign: TextAlign.center,
                    style: boldTextStyle(
                      color: Color.fromARGB(255, 4, 72, 128),
                      // color: appStore.isDarkModeOn ? white : BHAppTextColorPrimary,
                       size: 20),
                  ),
                 
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 90,
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: DotsIndicator(
                dotsCount: 3,
                position: currentPage.toDouble(),
                decorator: DotsDecorator(
                  // color: Color.fromARGB(255, 4, 72, 128).withOpacity(0.5),
                  activeColor: Color.fromARGB(255, 4, 72, 128),
                  size: Size.square(9.0),
                  activeSize: Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  
                  child: Text('Skip', style: TextStyle(color: Color.fromARGB(255, 2, 19, 172))),
                  onPressed: () {
                    // BHLoginScreen().launch(context);
                  },
                ),
                TextButton(
                  child: Text("Next", style: TextStyle(color: Color.fromARGB(255, 2, 19, 172))),
                  onPressed: () {
                    _pageController.nextPage(duration: _kDuration, curve: _kCurve);
                  },
                )
              ],
            ).visible(
              currentPage != 2,
              defaultWidget: Container(
                margin: EdgeInsets.only(),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 270,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 4, 72, 128),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BHLoginScreen()));
                        // BHLoginScreen().launch(context);
                      },
                      child: Text("GetStarted", style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
