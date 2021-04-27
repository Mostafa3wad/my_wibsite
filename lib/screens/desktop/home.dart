import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mosoft_website/provider/scrollControll.dart';
import 'package:mosoft_website/widgets/button.dart';
import 'package:mosoft_website/widgets/my_logo.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<ScrollControll>(context);
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * .8,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 20,
                      color: Colors.white60,
                      offset: Offset(-5, -5)),
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.black12.withOpacity(.2),
                      offset: Offset(5, 5)),
                ],
                color: Color(0xffF9B749),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RotatedBox(
                  quarterTurns: 3,
                  child: FlatButton(
                    onPressed: () => prov.moveToHomeView(),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    child: Text('Home',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: prov.controllerOffset <= 250
                                ? Color(0xffB9377F)
                                : Colors.white)),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: FlatButton(
                    onPressed: () => prov.moveToAboutView(),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    child: Text('About',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: prov.controllerOffset >= 500
                                ? Color(0xffB9377F)
                                : Colors.white)),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: FlatButton(
                    onPressed: () => prov.moveToSkilsView(),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    child: Text('Skills',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: prov.controllerOffset >= 768
                                ? Color(0xffB9377F)
                                : Colors.white)),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: FlatButton(
                    onPressed: () => prov.moveToRecentlyView(),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    child: Text('Recently Published',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: prov.controllerOffset >= 1006
                                ? Color(0xffB9377F)
                                : Colors.white)),
                  ),
                ),
                FlatButton(
                  onPressed: () =>
                      Share.share('check out my website https://example.com'),
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.share,
                    color: Color(0xffA7337A),
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 11,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 400),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: MediaQuery.of(context).size.height * .8,
              decoration: BoxDecoration(
                  color: Provider.of<ScrollControll>(context).homeColor,
                  borderRadius: BorderRadius.circular(25),
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
              child: Stack(
                children: [
                  Positioned(
                    bottom: 30,
                    right: 20,
                    child: Row(
                      children: [
                        FlatButton(
                            shape: CircleBorder(),
                            child: FaIcon(FontAwesomeIcons.facebook,
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
                        FlatButton(
                            shape: CircleBorder(),
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
                        FlatButton(
                            shape: CircleBorder(),
                            child: FaIcon(FontAwesomeIcons.twitter,
                                color: Color(0xff2AA9E0)),
                            onPressed: () async {
                              const url = 'https://twitter.com/Mostafa3wadD';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                              print("Pressed");
                            }),
                        FlatButton(
                            shape: CircleBorder(),
                            child: FaIcon(FontAwesomeIcons.github),
                            onPressed: () async {
                              const url = 'https://github.com/Mostafa3wad';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                              print("Pressed");
                            }),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyLogo(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hi There ,',
                                    style: TextStyle(
                                      color: Color(0xff5DAAC0),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20),
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  column(
                                      title: 'Email',
                                      subTilite: 'mos.3.soft@gmail.com'),
                                  column(
                                      title: 'phone',
                                      subTilite: '+201100282677'),
                                  column(
                                      title: 'location',
                                      subTilite: 'Egypt,Ismailia'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          'assets/img/char.png',
                          height: MediaQuery.of(context).size.height * .6,
                          width: MediaQuery.of(context).size.width * .6,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

  Widget column({String title, String subTilite}) {
    return Builder(
      builder: (context) => FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Color(0xff461556))),
                SizedBox(height: 10),
                Text(subTilite,
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xff4D5184),
                    )),
              ],
            ),
          ),
          onPressed: () {
            if (title == 'Email') {
              // todo : copy for Email
              Clipboard.setData(new ClipboardData(text: subTilite));
              // todo : Opene Mail in Desktop
              final Uri _emailLaunchUri = Uri(
                  scheme: 'mailto',
                  path: subTilite,
                  queryParameters: {
                    'subject': 'Example Subject & Symbols are allowed!'
                  });
              launch(_emailLaunchUri.toString());
              Scaffold.of(context).showSnackBar(SnackBar(
                backgroundColor: Color(0xff2C313C),
                elevation: 6.0,
                width: 200,
                behavior: SnackBarBehavior.floating,
                content: Text(
                  "Email copied to clipboard",
                  style: TextStyle(color: Colors.white),
                ),
              ));
            } else if (title == 'phone') {
              Clipboard.setData(new ClipboardData(text: subTilite));
              // todo : copy for phone
              Scaffold.of(context).showSnackBar(SnackBar(
                backgroundColor: Color(0xff2C313C),
                elevation: 6.0,
                width: 200,
                behavior: SnackBarBehavior.floating,
                content: Text(
                  "phone copied to clipboard",
                  style: TextStyle(color: Colors.white),
                ),
              ));
            }
          }),
    );
  }
