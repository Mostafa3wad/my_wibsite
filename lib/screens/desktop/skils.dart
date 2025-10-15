import 'package:flutter/material.dart';
import 'package:mosoft_website/provider/scrollControll.dart';
import 'package:mosoft_website/screens/desktop/about.dart';
import 'package:mosoft_website/widgets/title.dart';
import 'package:provider/provider.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(),
        ),
        Expanded(
            flex: 11,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 50),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Provider.of<ScrollControll>(context).skilsColor,
                  borderRadius: BorderRadius.circular(25),
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
                  TheTitle('Skills'),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  richText(
                                      titile: 'General Concept',
                                      subTitle:
                                          'OOP , Git ,GitHub , Debugging , Clean Code.'),
                                  richText(
                                      titile: 'Flutter',
                                      subTitle:
                                          'dart , State Management , localization.'),
                                  richText(
                                      titile: 'Other Languages',
                                      subTitle: 'Java , Kotlin , XML.'),
                                  richText(
                                      titile: 'Database',
                                      subTitle:
                                          'Shared preference , sqflite , Firebase.'),
                                  richText(
                                      titile: 'Others  ',
                                      subTitle:
                                          'JSON , API , problem solving.'),
                                ],
                              ),
                            ],
                          )),
                      Expanded(
                        flex: 1,
                        child: Container(
                            padding: const EdgeInsets.only(right: 30),
                            height: 180,
                            child: Image.asset('assets/img/gif.gif')),
                      ),
                    ],
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
