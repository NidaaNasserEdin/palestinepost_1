import 'package:flutter/material.dart';

import 'image_car.dart';

class strampsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "خدمة هواة الطوابع",
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
              CarouselWithIndicatorDemo3(),
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
                          'خدمة هواة الطوابع : ',
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
                          'هواية جمع الطوابع معروفة في العالم، وتنفرد عن غيرها'
                          ' بكونها متاحة لجميع الناس لما توفره من متعة وثقافة'
                          ' إضافة إلى الكسب المادي والادخار، وهي لا تتطلب نفقات كبيرة أو تجهيزات خاصة.',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "amiri",
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          'فالطابع هو سفير يطير على أجنحة الرسائل ليجوب العالم بمختلف لغاته وأجناسه'
                          ' حاملا اسم بلده ومعالمها وبعض تاريخها ومظاهرها الحضارية ،'
                          ' ولطالما اعتبرت الطوابع بطاقات زيارة للدول.',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "amiri",
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          'إن موضوعات طوابع البريد كثيرة ومتنوعة وهي تبرز عادة تراث الأمة وتقاليدها، '
                          'وعادات الكثير من شعوبها، كما توفر معلومات حول أحداث تاريخية وتطوّرات علمية، '
                          'كما تكشف الكثير عن الفنون والهندسة المعمارية ومنجزاتها،'
                          ' كما أن طوابع البريد تحيي ذكرى أبطالها وأعيادها القومية،'
                          ' وجمال البلاد التي تصدر عنها،فهي تحمل العديد من المناظر الطبيعية،'
                          ' وقد تحمل الطوابع صور لوحات فنية أو موضوعات دينية أو زهور أو أسماك',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "amiri",
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          'تنقسم الطوابع البريدية إلى قسمين: طوابع عادية، طوابع تذكارية.',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "amiri",
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          'الطوابع العادية:',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "amiri",
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          'وهي الطوابع التي تخصص للاستعمال اليومي،'
                          ' والتي تباع في مكاتب وشبابيك البريد لمدة غير محدودة '
                          'وتطبع بكميات كبيرة تلبي احتياجات البيع في جميع المكاتب البريدية.',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "amiri",
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          'الطوابع التذكارية:',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "amiri",
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          'لطوابع التذكارية الخاصة غالبا ما تصدر لمدة محددة،'
                          ' وذلك لإحياء ذكرى حدث معين أو مناسبة معينة.',
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
    );
  }
}
