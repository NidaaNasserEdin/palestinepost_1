import 'package:flutter/material.dart';

import 'image_carous.dart';

class PayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Column(
              children: <Widget>[
                Text(
                  "خدمات البريد",
                  style: TextStyle(
                    fontFamily: "amiri",
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "خدمة دفع الفواتير",
                  style: TextStyle(
                    fontFamily: "amiri",
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(48.0),
              ),
            ),
            backgroundColor: Colors.amberAccent,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CarouselWithIndicatorDemo2(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(50.0),
                        topRight: const Radius.circular(50.0),
                      ),
                    ),
                    height: 700,
                    width: 500,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              'خدمة دفع الفواتير ',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: "amiri",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'خدمة إلكترونية خاصة بالموظفين تمكنهم من تسديد قيمة '
                              'فواتير شركات الاتصالات والهاتف المحمول من مستحقات الرواتب الخاصة بهم، حسب محددات وشروط معينة.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "amiri",
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
