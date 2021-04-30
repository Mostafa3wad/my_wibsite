import 'package:flutter/material.dart';
import 'package:mosoft_website/provider/scrollControll.dart';
import 'package:mosoft_website/widgets/3d-button/3d-button.dart';
import 'package:mosoft_website/widgets/title.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class RecentlyPublished extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Container()),
        Published(),
      ],
    );
  }
}

class Published extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 11,
      child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Provider.of<ScrollControll>(context).recentColor,
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
              TheTitle('Recently Published'),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
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
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    color: Colors.redAccent,
                                    width: 2,
                                    height: 110),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Text(
                                              'Building a Magical 3D Button',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Icon(Icons.arrow_forward_ios,
                                            color: Colors.redAccent),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Bet you can\'t click just once!',
                                      style: TextStyle(color: Colors.black38),
                                    ),
                                    Text(
                                        'Every action we take on the web starts with a button click, and yet most buttons are \nho-hum and uninspired. In this tutorial, we\'ll build an animated 3D button with dart\n and flutter that sparks joy.'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Awesome3DButton(
                        onPressed: () {},
                        buttonColor: Color(0xffFF0041),
                        buttonChild: Text(
                          'Push Me',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        thickness: 10,
                        buttonHeight: 70,
                        buttonWidth: 180,
                      )),
                ],
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
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
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  color: Colors.redAccent,
                                  width: 2,
                                  height: 110),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('img/tiresize5.png',
                                          height: 40),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Text('Tire Size',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Icon(Icons.arrow_forward_ios,
                                          color: Colors.redAccent),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                      '1- Calculates the diameter, width, sidewall, circumference, and revolutions per mile/km of any tire. Just enter the tire size.\n2- Compare two different tyre sizes and see the differences right away. \n3- It has a comprehensive database..'),
                                ],
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/img/tiresize1.png',
                                height: 100,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Image.asset(
                                  'assets/img/tiresize2.png',
                                  height: 100,
                                ),
                              ),
                              Image.asset(
                                'assets/img/tiresize3.png',
                                height: 100,
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
