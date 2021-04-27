import 'package:flutter/material.dart';
import 'package:mosoft_website/provider/scrollControll.dart';
import 'package:mosoft_website/screens/desktop/about.dart';
import 'package:mosoft_website/widgets/title.dart';
import 'package:provider/provider.dart';

class SkillsTaplet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Provider.of<ScrollControll>(context).skilsColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                blurRadius: 20, color: Colors.white60, offset: Offset(-5, -5)),
            BoxShadow(
                blurRadius: 10,
                color: Colors.black12.withOpacity(.2),
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
                  flex: 10,
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
                              subTitle: 'JSON , API , problem solving.'),
                        ],
                      ),
                    ],
                  )),
              size.width >= 590
                  ? Expanded(
                      flex: 5,
                      child: Container(
                          height: 180,
                          child: Image.asset('assets/img/gif.gif')),
                    )
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }
}
