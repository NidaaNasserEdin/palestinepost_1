import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:palestinepost/Postal_Box/image_carousek.dart';

class PostalBoxPage extends StatefulWidget {
  const PostalBoxPage({Key? key}) : super(key: key);

  @override
  _PostalBoxPageState createState() => _PostalBoxPageState();
}

class _PostalBoxPageState extends State<PostalBoxPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                "خدمة صناديق البريد ",
                style: TextStyle(
                  fontFamily: "amiri",
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  fontSize: 15,
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
        ),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CarouselWithIndicatorDemo(),
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
                            'خدمة صناديق البريد ',
                            textAlign: TextAlign.right,
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
                            'تنتشر صناديق البريد الخصوصية في معظم مكاتب البريد'
                            'المنتشرة في جميع المحافظات والتجمعات السكانية بواقع (83) مكتب بريد.',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "amiri",
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            ' يوفر البريد الفلسطيني خدمة استئجار صناديق البريد الخصوصية'
                            'للأفراد والمؤسسات ، لنصل إليك ونوصلك إلى العالم عبر هذه'
                            'الخدمة التي نوفرها لك أينما كنت عبر فروع مكاتب البريد، '
                            'حيث يحتوي كل صندوق بريد على رقم كعنوان للشخص أو المؤسسة'
                            'لجميع المراسلات لسهولة وصولها بسرعة وامان.',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "amiri",
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            'إجراءات استئجار الصندوق البريدي',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "amiri",
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            '• تقديم صورة عن هوية الشخص الراغب في إستئجار الصندوق',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "amiri",
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            '• يقوم المواطن بتعبئة نموذج مخصص بمساعدة مسؤول شباك'
                            'البريد ويقوم الموظف باستيفاء الرسوم المقررة بقطع ايصال مالي',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "amiri",
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            '• على المواطن شراء قفل لصندوق البريد مع مفاتيحه ويقوم'
                            'موظف البريد بتركيبه واعطاء المواطن المفاتيح',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "amiri",
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            '• رسوم الاشتراك 120 شيكل سنويا حسب التعرفة البريدية',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "amiri",
                              fontSize: 15,
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
    );
  }
}
