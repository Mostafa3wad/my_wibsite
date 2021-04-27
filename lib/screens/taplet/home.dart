import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mosoft_website/provider/scrollControll.dart';
import 'package:mosoft_website/screens/desktop/home.dart';
import 'package:mosoft_website/widgets/button.dart';
import 'package:mosoft_website/widgets/my_logo.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<ScrollControll>(context);
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      margin: const EdgeInsets.only(left: 10, top: 100, right: 10),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Provider.of<ScrollControll>(context).homeColor,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyLogo(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          child: FaIcon(FontAwesomeIcons.facebook,
                              color: Color(0xff0F91F3)),
                          onTap: () async {
                            const url =
                                'https://www.facebook.com/dealer.serotonin/';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
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
                          onTap: () async {
                            const url =
                                'https://www.instagram.com/muostafa.awad/';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                            print("Pressed");
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          child: FaIcon(FontAwesomeIcons.twitter,
                              color: Color(0xff2AA9E0)),
                          onTap: () async {
                            const url = 'https://twitter.com/Mostafa3wadD';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                            print("Pressed");
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          child: FaIcon(FontAwesomeIcons.github),
                          onTap: () async {
                            const url = 'https://github.com/Mostafa3wad';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                            print("Pressed");
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi There ,',
                        style: TextStyle(
                          color: Color(0xff5DAAC0),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text('I Am a Flutter Developer',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff3B7FA2),
                                  fontWeight: FontWeight.bold))),
                      Text(
                        'Welcome to my Protfolio Website.',
                        style: TextStyle(
                          color: Color(0xff5DAAC0),
                        ),
                      ),
                      SizedBox(height: 30),
                      MyButton(
                        icon: Icons.person,
                        text: 'More About Me,',
                        onTap: () => prov.moveToAboutView(),
                      )
                    ],
                  ),
                ),
                Expanded(flex: 2, child: Image.asset('assets/img/char.png'))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                column(title: 'Email', subTilite: 'mos.3.soft@gmail.com'),
                column(title: 'phone', subTilite: '+201100282677'),
                column(title: 'location', subTilite: 'Egypt,Ismailia'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
