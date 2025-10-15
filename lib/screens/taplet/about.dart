import 'package:flutter/material.dart';
import 'package:mosoft_website/provider/scrollControll.dart';
import 'package:mosoft_website/screens/desktop/about.dart';
import 'package:mosoft_website/widgets/button.dart';
import 'package:mosoft_website/widgets/title.dart';
import 'package:provider/provider.dart';
import 'dart:html' as html;

class AboutTaplet extends StatefulWidget {
  @override
  _AboutTapletState createState() => _AboutTapletState();
}

class _AboutTapletState extends State<AboutTaplet> {
  double height = 40;
  double oldHeight = 40;
  double xPosition = 0;
  double yPosition = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Provider.of<ScrollControll>(context).aboutColor,
            boxShadow: [
              BoxShadow(
                  blurRadius: 20,
                  color: Colors.white60,
                  offset: Offset(-5, -5)),
              BoxShadow(
                  blurRadius: 10,
                  color: Colors.black12.withValues(
                    alpha: (.2),
                  ),
                  offset: Offset(5, 5)),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TheTitle('About Me'),
            Text('Main Informations About Me And What I Love To Do',
                style: TextStyle(color: Colors.black38)),
            SizedBox(height: 20),
            Text(
              'Hello, I\'m Mostafa Awad',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Expanded(
                    flex: size.width >= 720 ? 1 : 2,
                    child: Image.asset('assets/img/my_photo.jpg')),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        size.width >= 720
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      richText(
                                          titile: 'Name',
                                          subTitle: 'Mostafa Awad'),
                                      richText(
                                          titile: 'Nationality',
                                          subTitle: 'Egypt'),
                                      richText(
                                          titile: 'Work Status',
                                          subTitle: 'Flutter Developer'),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      richText(
                                          titile: 'Phone',
                                          subTitle: '+201100282677'),
                                      richText(
                                          titile: 'Email',
                                          subTitle: 'mos.3.soft@gmail.com'),
                                      richText(
                                          titile: 'Address',
                                          subTitle: 'Egypt,Ismailia'),
                                    ],
                                  ),
                                ],
                              )
                            : Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      richText(
                                          titile: 'Name',
                                          subTitle: 'Mostafa Awad'),
                                      richText(
                                          titile: 'Nationality',
                                          subTitle: 'Egypt'),
                                      richText(
                                          titile: 'Work Status',
                                          subTitle: 'Flutter Developer'),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      richText(
                                          titile: 'Phone',
                                          subTitle: '+201100282677'),
                                      richText(
                                          titile: 'Email',
                                          subTitle: 'mos.3.soft@gmail.com'),
                                      richText(
                                          titile: 'Address',
                                          subTitle: 'Egypt,Ismailia'),
                                    ],
                                  ),
                                ],
                              ),
                        MyButton(
                          icon: Icons.cloud_download,
                          text: 'Download My CV',
                          onTap: () {
                            html.window.open(
                                "https://firebasestorage.googleapis.com/v0/b/shoshel-meda.appspot.com/o/my_cv.pdf?alt=media&token=482eb900-db21-4ac9-bf02-5c0b753510da",
                                "text");
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
