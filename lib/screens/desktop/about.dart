import 'package:flutter/material.dart';
import 'package:mosoft_website/provider/scrollControll.dart';
import 'package:mosoft_website/widgets/button.dart';
import 'package:mosoft_website/widgets/title.dart';
import 'package:provider/provider.dart';
import 'dart:html' as html;

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Container()),
        Expanded(
          flex: 11,
          child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 50),
              margin: const EdgeInsets.all(15),
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
                        color: Colors.black12.withOpacity(.2),
                        offset: Offset(5, 5)),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TheTitle('About Me'),
                  Text('Main Informations About Me And What I Love To Do',
                      style: TextStyle(color: Colors.black38)),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Image.asset('assets/img/my_photo.jpg')),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hello, I\'m Mostafa Awad',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
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
                      Expanded(flex: 1, child: Container()),
                    ],
                  )
                ],
              )),
        ),
      ],
    );
  }
}

Widget richText(
    {@required String titile,
    @required String subTitle,
    @required double fontSize}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: RichText(
      text: new TextSpan(
        text: '',
        children: <TextSpan>[
          TextSpan(
              text: titile + " : ",
              style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize != null ? fontSize : null)),
          TextSpan(
              text: subTitle,
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: fontSize != null ? fontSize : null)),
        ],
      ),
    ),
  );
}
