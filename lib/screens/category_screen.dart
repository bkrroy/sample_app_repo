import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_app/screens/home_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'YOURSTORY',
            style: GoogleFonts.robotoCondensed(
              fontSize: 25.0,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User, we\'d love to know you better',
              style: GoogleFonts.roboto(
                color: Colors.grey,
              ),
            ),
            Text(
              '\nWhich of these best describes you ?',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Text(
              '\nYou can pick upto two of them.\n',
              style: GoogleFonts.roboto(
                color: Colors.grey,
              ),
            ),
            Container(
              height: screenHeight * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DescriptionBox(
                        textInfo: 'Entrepreneur',
                      ),
                      DescriptionBox(
                        textInfo: 'Student',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DescriptionBox(
                        textInfo: 'Homemaker',
                      ),
                      DescriptionBox(
                        textInfo: 'Corporate employee',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DescriptionBox(
                        textInfo: 'Aspiring Entrepreneur',
                      ),
                      DescriptionBox(
                        textInfo: 'Startup employee',
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => HomeScreen()),
                          (_) => false);
                    },
                    child: Container(
                      height: 60,
                      width: screenWidth * 0.99,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionBox extends StatefulWidget {
  DescriptionBox({required this.textInfo});

  final String textInfo;

  @override
  _DescriptionBoxState createState() => _DescriptionBoxState();
}

class _DescriptionBoxState extends State<DescriptionBox> {
  Color _outlineColor = Colors.grey;
  Color _fillColor = Colors.transparent;

  void changeOutlineColor() {
    if (_outlineColor == Colors.grey) {
      _outlineColor = Colors.red;
      _fillColor = Color(0xFFFEF4F3);
    } else {
      _outlineColor = Colors.grey;
      _fillColor = Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          changeOutlineColor();
        });
      },
      child: Container(
        height: 120,
        width: 150,
        decoration: BoxDecoration(
          color: _fillColor,
          border: Border.all(width: 1, color: _outlineColor),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            widget.textInfo,
          ),
        ),
      ),
    );
  }
}
