import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_app/screens/category_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight,
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: screenHeight * 0.1,
          ),
          Text(
            'YOURSTORY',
            style: GoogleFonts.robotoCondensed(
              fontSize: 58.0,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Startup India on your \nfingertips',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          // This container is for google or facebook sign in
          Container(
            height: screenHeight * 0.3,
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LoginButtonWidget(
                  imagePath: 'google_logo.png',
                  textInfo: 'Login with Google',
                ),
                LoginButtonWidget(
                    imagePath: 'facebook_logo.png',
                    textInfo: 'Login with Facebook'),
              ],
            ),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: GoogleFonts.roboto(
                fontSize: 12.0,
                color: Colors.grey,
              ),
              children: <TextSpan>[
                TextSpan(text: 'By signing up for YourStory you agree to the '),
                TextSpan(
                  text: 'Terms of Service',
                  style: GoogleFonts.roboto(
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: ' and\n'),
                TextSpan(
                  text: 'Privacy Policy',
                  style: GoogleFonts.roboto(
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' of the platform',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// This is the login button
class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    required this.imagePath,
    required this.textInfo,
  });

  final String imagePath;
  final String textInfo;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => CategoryScreen()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        height: screenHeight * 0.10,
        width: screenWidth * 0.75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 30,
              child: Image.asset('assets/images/$imagePath'),
            ),
            Text('$textInfo')
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
