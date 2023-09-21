import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_wash/theme/assets.dart';
import 'package:quick_wash/theme/themedata.dart';

import 'main.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SplashScreen(),
//     );
//   }
// }

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();

    // Simulate a delay of 2 seconds before transitioning to the main screen
    Future.delayed(Duration(seconds: 1), () {
      navigateToMainScreen();
    });
  }

  void navigateToMainScreen() {
    // TODO: Replace this with the actual main screen of your Quick Wash Car Wash app
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MainScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
     h=MediaQuery.of(context).size.height;
    w=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              assets.Splash,
              width: h*.150,
              height: w*.150,
            ),
            SizedBox(height: 20),
            Text(
              '',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: h*0.05,
              ),
              Center(
                child: Container(

                  height: h*0.2,
                  width: w*1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        assets.logincar
                      ),
                    ),
                  ),
                ),


              ),
              SizedBox(
                height: h * 0.05,
              ),

              Text(
                " Here’s where\nwe Shine",
                textAlign: TextAlign.center,
                style: GoogleFonts.muktaVaani(
                    color: Color(0xff001855),
                    // fontStyle: FontStyle.italic,
                    fontSize: w * 0.08,
                    fontWeight: FontWeight.w900),


              ),
              SizedBox(
                height: h * 0.05,
              ),

              Text(
                "Book your easy\nbe the shiny rock star on the road",
                textAlign: TextAlign.center,
                style: GoogleFonts.muktaVaani(
                    color: Color(0xff001855),
                    // fontStyle: FontStyle.italic,
                    fontSize: w * 0.05,
                    fontWeight: FontWeight.w400),


              ),
              SizedBox(
                height: h * 0.05,
              ),
              Container(
                height: h * 0.06,
                width:  w * 0.4,
                decoration: BoxDecoration(
                  color: themeData.primaryColor,
                  borderRadius: BorderRadius.circular(43),
                ),
                child: Center(
                  child: Text(
                      "Login",
                    textAlign:TextAlign.center ,
                    style: GoogleFonts.muktaVaani(
                        color: Color(0xffFFFFFF),

                        fontSize: w * 0.066,
                        fontWeight: FontWeight.w600),

                  ),

                ),

              ),
              SizedBox(
                height: h * 0.001,
              ),
              Text(
                  "or",
                textAlign: TextAlign.center,
                style: GoogleFonts.muktaVaani(
                    color: Color(0xff001855),
                    // fontStyle: FontStyle.italic,
                    fontSize: w * 0.046,
                    fontWeight: FontWeight.w400),

              ),
              SizedBox(
                height: h * 0.0001,
              ),
              Container(
                height: h * 0.06,
                width:  w * 0.4,
                decoration: BoxDecoration(
                  color: themeData.white,
                  borderRadius: BorderRadius.circular(43),

                ),
                child: Center(
                  child: Text(
                    " Sign up",
                    textAlign:TextAlign.center ,
                    style: GoogleFonts.muktaVaani(
                        color: themeData.primaryColor,

                        fontSize: w * 0.066,
                        fontWeight: FontWeight.w600),

                  ),

                ),

              ),

            ],
          ) ,

        ),
      ),
    );
  }
}
