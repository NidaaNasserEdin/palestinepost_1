import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palestinepost/Postal_Box/image_carousek.dart';

import 'image_carousk1.dart';

class judgedPage extends StatefulWidget {
  const judgedPage({Key? key}) : super(key: key);

  @override
  _judgedPageState createState() => _judgedPageState();
}

class _judgedPageState extends State<judgedPage> {
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
                  "خدمة  عدم محكومية",
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
                  CarouselWithIndicatorDemo1(),
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
                              'خدمة  عدم محكومية ',
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: "amiri",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              'هي خدمة تقدم للشخص طالبها من خلال إصدار وثيقة رسمية'
                              ' تفيد بأنه غير محكوم عليه بحكم نهائي بجناية أو جنحة من قبل المحاكم الفلسطينية، '
                              'وتصدر لكل مواطن فلسطيني أو شخص أجنبي مقيم على الأراضي الفلسطينية بصفة دائمة أو مؤقتة،'
                              ' وتشمل الخدمة إصدارها باللغة العربية و اللغة الإنجليزية.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "amiri",
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              'شروط الحصول على الخدمة :',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "amiri",
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              ' - عدم وجود حكم على المواطن بغرامة تزيد عن 300 دينار.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "amiri",
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              '-عدم وجود حكم على الأشخاص (الطبيعي و الاعتباري) بالحبس لمده تزيد عن ثلاث أشهر.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "amiri",
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              ' يقوم المواطن بتعبئة نموذج مخصص بمساعدة مسؤول شباك'
                              'البريد ويقوم الموظف باستيفاء الرسوم المقررة بقطع ايصال  مالي.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "amiri",
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              'بحالة الشخص الاعتباري يجب أبراز وثيقة التسجيل من الجهة المرخصة.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "amiri",
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              'الوثائق المطلوبة:',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "amiri",
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              '1-بحالة طلب باللغة الانجليزيه يجب ابراز جواز السفر ساري المغعول.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "amiri",
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              '2-التوكيل (التفويض).',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "amiri",
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              '3-وثيقة تعريفية رسمية (هوية او جواز سفر).',
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
