import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color(0xFF3D485A),
            height: screenHeight * 0.3,
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Company Listing',
                  style: GoogleFonts.roboto(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'A Lis of Companies Curated By YourStory Media',
                  style: GoogleFonts.roboto(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  height: screenWidth * 0.10,
                  width: screenWidth * 0.9,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Search Companies',
                      style: TextStyle(color: Colors.white),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                CompanyCard(screenHeight: screenHeight, screenWidth: screenWidth),
                CompanyCard(screenHeight: screenHeight, screenWidth: screenWidth),
                CompanyCard(screenHeight: screenHeight, screenWidth: screenWidth),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CompanyCard extends StatelessWidget {
  const CompanyCard({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: screenHeight * 0.245,
        width: screenWidth * 0.8,
        decoration: BoxDecoration(
          color: Color(0xFFE1E1EE),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: screenHeight * 0.12,
                  width: screenWidth * 0.3,
                  child: Image.network(
                      'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco,dpr_1/xhy1sam68zmrqzfjrpyj', fit: BoxFit.cover,),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kaleidofin',
                      style: GoogleFonts.roboto(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: screenHeight*0.12,
                      width: screenWidth*0.5,
                      child: Text('Chennai based Kaleidofin Private'
                          'Limited is a wealth-tech platform teaching out to 600 million'),
                    )
                  ],
                ),
              ],
            ),
            Container(
              height: screenHeight*0.07,
              width: screenWidth*0.89,
              color: Colors.white,
              child: Row(
                children: [
                  Icon(Icons.monetization_on_outlined),
                  SizedBox(width: 5.0,),
                  Text('FinTech'),
                  SizedBox(width: screenWidth*0.3,),
                  Text('|'),
                  Icon(Icons.location_on),
                  Text('Bangalore, Karnataka'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
