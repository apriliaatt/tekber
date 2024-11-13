import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<AboutPage> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Fixed background image layer
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background2.jpg'), // Adjust image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content layer with scroll functionality
          SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: screenHeight),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      // Profile section
                      Container(
                        width: screenWidth * 0.8,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 25,
                              offset: Offset(7, 7),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: screenWidth * 0.15,
                              backgroundImage: AssetImage('assets/profile.jpg'), // Adjust profile image path
                            ),
                            SizedBox(height: 20),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Aprilia Tri Tanti',
                                    style: TextStyle(
                                      fontFamily: 'Pacifico',
                                      fontSize: screenWidth * 0.05,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Hi! My name is April and I am an Undergraduate student of Information Systems Department at Institute Technology of Sepuluh Nopember.\n'
                                    'My student ID number is 5026211033 and I\'m currently at 7th semester and hopefully will graduate in next semester.\n'
                                    'and here I am, in the Emerging Technology B class, implementing it through this assignment :)\n'
                                    'My motto is "Let\'s live healthy and happily"',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Lora',
                                      fontSize: screenWidth * 0.02,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      
                      // Fun Facts Section
                      Container(
                        width: screenWidth * 0.8,
                        child: Card(
                          color: Colors.white.withOpacity(0.9),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ExpansionTile(
                            title: Text(
                              'Fun Facts About Me',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: screenWidth * 0.03,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            children: <Widget>[
                              ListTile(
                                title: Text("❤️ Rain + LANY is my fav combo"),
                              ),
                              ListTile(
                                title: Text("🐱 I like cats even though I'm not allowed to keep them :("),
                              ),
                              ListTile(
                                title: Text("📖 I'm a huge fan of novels and comics"),
                              ),
                              ListTile(
                                title: Text("☕ I can't live without coffee, Coffee addict🤘🏻"),
                              ),
                              ListTile(
                                title: Text("⭐ Sometimes I just wannabe Patrick, just eat and live without thinking"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
