import 'package:flutter/material.dart';
import 'package:mosoft_website/provider/scrollControll.dart';
import 'package:mosoft_website/widgets/title.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class RecentlyPublishedTaplet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20.0),
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
                  color: Colors.black12.withValues(alpha: .2),
                  offset: Offset(5, 5)),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TheTitle(
              'Recently Published',
              colorText: null,
            ),
            SizedBox(height: 30),
            TextButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
              onPressed: () async {
                const url =
                    'https://play.google.com/store/apps/details?id=com.mosoft.tiresize&hl=ar&gl=US';
                if (await canLaunchUrlString(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: LayoutBuilder(
                builder: (context, constraints) => Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 30,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset('img/tiresize5.png', height: 40),
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
                          )),
                      Expanded(
                          flex: 20,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/img/tiresize1.png',
                                height: size.width * 0.14,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Image.asset(
                                  'assets/img/tiresize2.png',
                                  height: size.width * 0.14,
                                ),
                              ),
                              Image.asset(
                                'assets/img/tiresize3.png',
                                height: size.width * 0.14,
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
