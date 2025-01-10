import 'package:electicity_bill_calculator/page.dart/home_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final int _selectedIndex2 = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.yellow,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.info),
                label: 'About',
              ),
            ],
            currentIndex: _selectedIndex2,
            selectedItemColor: Colors.black,
            onTap: (index) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  if (index == 1) {
                    return AboutPage();
                  } else {
                    return ElecityBillCalculator();
                  }
                },
              ));
            }),
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          shape: Border(
              // bottom: BorderSide(color: Colors.black, width: 0.3),
              ),
          toolbarHeight: 70,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.1),
            child: Container(
              // color: Colors.black,
              height: 1.0,
            ),
          ),
          title: const Text(
            'About',
            style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                height: 10),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context)
              .size
              .height, // Set the height to the screen height
          width: MediaQuery.of(context)
              .size
              .width, // Set the width to the screen width
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage('assets/files/about.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Electricity Bill Calculator',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Version: 1.0.0',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'This app helps you calculate your electricity bill based on your usage. Simply enter your usage details and the app will provide you with an estimate of your bill.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Developed by: Om Sunil Belekar',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Contact us:',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchUrl(Uri.parse('https://github.com/om945'));
                      },
                      child: Text(
                        'Contact me on GitHub',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchUrl(Uri.parse(
                            'https://www.linkedin.com/in/om-belekar-aab424326?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app'));
                      },
                      child: Text(
                        'Contact me on LinkedIn',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
