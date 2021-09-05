import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.25,
              width: screenWidth,
              color: Colors.white,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: screenHeight * 0.16,
                        width: screenWidth,
                        color: Color(0xFFFEF4F3),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: screenWidth * 0.09,
                          ),
                          Text(
                            'YOURSTORY',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 28.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.bookmark),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        height: 50,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Search articles, videos, companies',
                              style: GoogleFonts.roboto(
                                color: Colors.grey,
                              ),
                            ),
                            Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Top Picks',
                            style: GoogleFonts.roboto(
                              fontSize: 20.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Latest News',
                            style: GoogleFonts.roboto(
                              fontSize: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'For you',
                            style: GoogleFonts.roboto(
                              fontSize: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              height: screenHeight * 0.1,
              width: screenWidth,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'September 05,2021',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  DropdownButton<String>(
                    items: <String>['Today', 'Yesterday', 'Sep 03', 'Sep 02']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                height: screenHeight * 0.2,
                width: screenWidth,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      width: screenWidth * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning, User',
                            style: GoogleFonts.roboto(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Here\'s the best of today, '
                            'handpicked by our team of editors for you',
                            style: GoogleFonts.roboto(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Start My Day',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 23.0,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.3,
                      child: Image.asset('assets/images/37128.jpg',
                          fit: BoxFit.fill),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            NewsBox(imageLocation: 'https://images.yourstory.com/cs/2/d72b5ef09db411ebb4167b901dac470c/leher-1630665164528.png?fm=auto&ar=2:1&mode=crop&crop=faces&w=800',),
            SizedBox(
              height: 10,
            ),
            NewsBox(imageLocation: 'https://images.yourstory.com/cs/2/70651a302d6d11e9aa979329348d4c3e/Zetwerk-1630653519416.png?fm=auto&ar=2:1&mode=crop&crop=faces&w=800',),
            SizedBox(
              height: 10,
            ),
            NewsBox(imageLocation: 'https://images.yourstory.com/cs/2/a9efa9c02dd911e9adc52d913c55075e/Khatabookteam-01-1629810240935.png?fm=auto&ar=2:1&mode=crop&crop=faces&w=800',),
          ],
        ),
      ),
    );
  }
}

class NewsBox extends StatelessWidget {

  NewsBox({required this.imageLocation});

  final String imageLocation;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.4,
      width: screenWidth,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: screenHeight * 0.2,
            width: screenWidth,
            child: Image.network(
              imageLocation,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Social networking app Leher aims to be the Clubhouse for Tier I, II India',
              style: GoogleFonts.roboto(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Bengaluru-based social networking app Leher offers live audio and video'
                ' club rooms to discuss areas of interest with your network, community, or friends'),
          )
        ],
      ),
    );
  }
}

// class DropDownOption extends StatefulWidget {
//   const DropDownOption({Key? key}) : super(key: key);
//
//   @override
//   _DropDownOptionState createState() => _DropDownOptionState();
// }

// class _DropDownOptionState extends State<DropDownOption> {
//   String dropdownValue = 'One';
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: dropdownValue,
//       icon: const Icon(Icons.keyboard_arrow_down_sharp),
//       iconSize: 24,
//       elevation: 16,
//       style: const TextStyle(color: Colors.deepPurple),
//       underline: Container(
//         height: 2,
//         color: Colors.deepPurpleAccent,
//       ),
//       onChanged: (String? newValue) {
//         setState(() {
//           dropdownValue = newValue!;
//         });
//       },
//       items: <String>['Today', 'Yesterday', 'Sep\'03', 'Four']
//           .map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }
