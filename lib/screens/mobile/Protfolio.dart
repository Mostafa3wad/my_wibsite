import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mosoft_website/background/clipPath.dart';
import 'package:mosoft_website/screens/desktop/about.dart';
import 'package:mosoft_website/widgets/my_logo.dart';
import 'package:mosoft_website/widgets/title.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

class ProtfolioMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        drawer: Drawer(),
        backgroundColor: Color(0xff1D2630),
        body: Stack(
          children: [
            Container(
                width: size.width,
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff7C9CAB),
                        Color(0xffB1DEF4),
                        Color(0xffE0EFF8),
                      ]),
                )),
            // the logo
            Positioned(top: 10, right: 10, child: MyLogo()),
            // the List View Widget
            Container(
              color: Colors.transparent,
              child: ListView(
                children: [
                  Container(
                    height: 170,
                    width: 500,
                    color: Colors.transparent,
                  ),
                  ClipPath(
                    child: Container(
                      padding:
                          const EdgeInsets.only(top: 80, left: 10, right: 10),
                      width: 500,
                      color: Color(0xffFDFDFD),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hi There ,',
                                          style: TextStyle(),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 20),
                                            child: Text(
                                                'I Am a Flutter Developer',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color(0xff4433FF),
                                                    fontWeight:
                                                        FontWeight.bold))),
                                        Text(
                                          'Welcome to my Protfolio Website.',
                                          style: TextStyle(),
                                        ),
                                        SizedBox(height: 30),
                                        GestureDetector(
                                          onTap: () {
                                            html.window.open(
                                                "https://firebasestorage.googleapis.com/v0/b/shoshel-meda.appspot.com/o/my_cv.pdf?alt=media&token=482eb900-db21-4ac9-bf02-5c0b753510da",
                                                "text");
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 10),
                                            height: 40,
                                            width: 120,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFA7337A),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Icon(Icons.cloud_download,
                                                        size: 15,
                                                        color: Colors.white),
                                                    Text(
                                                      'Download My CV',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white),
                                                    )
                                                  ]),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/img/gif1.gif'),
                                      // the Social
                                      Row(
                                        children: [
                                          IconButton(
                                              icon: FaIcon(
                                                  FontAwesomeIcons.facebook,
                                                  color: Color(0xff0F91F3)),
                                              onPressed: () async {
                                                const url =
                                                    'https://www.facebook.com/dealer.serotonin/';
                                                if (await canLaunch(url)) {
                                                  await launch(url);
                                                } else {
                                                  throw 'Could not launch $url';
                                                }
                                              }),
                                          IconButton(
                                              icon: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 3.5),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    gradient: LinearGradient(
                                                        begin:
                                                            Alignment.topRight,
                                                        end: Alignment
                                                            .bottomLeft,
                                                        colors: [
                                                          Color(0xff7A38AB),
                                                          Color(0xffD21A46),
                                                          Color(0xffEFC302),
                                                        ]),
                                                  ),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.instagram,
                                                    color: Colors.white,
                                                  )),
                                              onPressed: () async {
                                                const url =
                                                    'https://www.instagram.com/muostafa.awad/';
                                                if (await canLaunch(url)) {
                                                  await launch(url);
                                                } else {
                                                  throw 'Could not launch $url';
                                                }
                                                print("Pressed");
                                              }),
                                          IconButton(
                                              icon: FaIcon(
                                                  FontAwesomeIcons.twitter,
                                                  color: Color(0xff2AA9E0)),
                                              onPressed: () async {
                                                const url =
                                                    'https://twitter.com/Mostafa3wadD';
                                                if (await canLaunch(url)) {
                                                  await launch(url);
                                                } else {
                                                  throw 'Could not launch $url';
                                                }
                                                print("Pressed");
                                              }),
                                          IconButton(
                                              icon: FaIcon(
                                                FontAwesomeIcons.github,
                                                color: Colors.black,
                                              ),
                                              onPressed: () async {
                                                const url =
                                                    'https://github.com/Mostafa3wad';
                                                if (await canLaunch(url)) {
                                                  await launch(url);
                                                } else {
                                                  throw 'Could not launch $url';
                                                }
                                                print("Pressed");
                                              }),
                                        ],
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          SizedBox(height: 40),
                          // About
                          TextButton(
                            onLongPress: () {},
                            onPressed: () {},
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              width: size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TheTitle(
                                    'About',
                                    colorText: Color(0xff4433FF),
                                  ),
                                  Text(
                                    'Hello, I\'m Mostafa Awad',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  richText(
                                      titile: 'Nationality',
                                      subTitle: 'Egypt',
                                      fontSize: 12),
                                  richText(
                                      titile: 'Work Status',
                                      subTitle: 'Flutter Developer',
                                      fontSize: 12),
                                  richText(
                                      titile: 'Phone',
                                      subTitle: '+201100282677',
                                      fontSize: 12),
                                  richText(
                                      titile: 'Email',
                                      subTitle: 'mos.3.soft@gmail.com',
                                      fontSize: 12),
                                  richText(
                                      titile: 'Address',
                                      subTitle: 'Egypt,Ismailia',
                                      fontSize: 12),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          // Skills
                          TextButton(
                            onLongPress: () {},
                            onPressed: () {},
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              width: size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TheTitle(
                                    'Skills',
                                    colorText: Color(0xff4433FF),
                                  ),
                                  Text(
                                    'Hello, I\'m Mostafa Awad',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  richText(
                                      titile: 'General Concept',
                                      subTitle:
                                          'OOP , Git ,GitHub , Debugging , Clean Code.',
                                      fontSize: 12),
                                  richText(
                                      titile: 'Flutter',
                                      subTitle:
                                          'dart , State Management , localization.',
                                      fontSize: 12),
                                  richText(
                                      titile: 'Other Languages',
                                      subTitle: 'Java , Kotlin , XML.',
                                      fontSize: 12),
                                  richText(
                                      titile: 'Database',
                                      subTitle:
                                          'Shared preference , sqflite , Firebase.',
                                      fontSize: 12),
                                  richText(
                                      titile: 'Others  ',
                                      subTitle: 'JSON , API , problem solving.',
                                      fontSize: 12),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          // Recently Published

                          TextButton(
                            style: ButtonStyle(
                              shape: WidgetStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(color: Colors.transparent),
                                ),
                              ),
                            ),
                            onPressed: () async {
                              const url =
                                  'https://play.google.com/store/apps/details?id=com.mosoft.tiresize&hl=ar&gl=US';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TheTitle(
                                    'Recently Published',
                                    colorText: Color(0xff4433FF),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          color: Colors.redAccent,
                                          width: 2,
                                          height: 110),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset('img/tiresize5.png',
                                                  height: 40),
                                              Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5),
                                                child: Text('Tire Size',
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                              Icon(Icons.arrow_forward_ios,
                                                  color: Colors.redAccent),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                              '1- Calculates the diameter, width, sidewall, circumference, and'),
                                          Text(
                                              '  revolutions per mile/km of any tire. Just enter the tire size.'),
                                          Text(
                                            '2- Compare two different tyre sizes and see the dif..',
                                            style: TextStyle(
                                                color: Colors.black38),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                        ],
                      ),
                    ),
                    clipper: CliperPath(),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
