import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:palestinepost/pay/pay.dart';
import 'package:palestinepost/stamps/stamps.dart';
import 'Conta/Contatcs.dart';
import 'MyFlutterApp.dart';
import 'Postal_Box/Postal.dart';
import 'SearchPackage/Search.dart';
import 'Judged/judged.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cardColor: Color(0xffc4d6a4),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> imageList = [
    "images/2a.png",
    "images/1a.jpg",
    "images/3a.jpg",
    "images/4a.jpeg",
    "images/5a.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              " البــــريـــد الفلـــسطيـــني",
              style: TextStyle(
                  fontFamily: "amiri",
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(48.0),
              ),
            ),
            backgroundColor: Colors.amberAccent,
          ),
          drawer: Container(
            width: 300,
            child: Drawer(
              elevation: 1.5,
              child: ListView(
                children: [
                  DrawerHeader(
                    child: Text(""),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/2a.png'))),
                  ),
                  buildMenuItem(
                      icon: Icon(
                        Icons.search_off_sharp,
                        size: 35,
                        color: Colors.black,
                      ),
                      title: "تتبع بريدك",
                      onClick: () {
                        selectItem(context, 0);
                      }),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                        child: Divider(
                          color: Colors.black,
                          height: 50,
                        ),
                      )),
                      Text(
                        "خدمات البريد",
                        style: TextStyle(
                          fontFamily: "amiri",
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontSize: 20,
                        ),
                      ),
                      Expanded(
                        child: new Container(
                            margin:
                                const EdgeInsets.only(left: 15.0, right: 10.0),
                            child: Divider(
                              color: Colors.black,
                              height: 50,
                            )),
                      ),
                    ],
                  ),
                  buildMenuItem(
                      icon: Icon(
                        MyFlutterApp.post_box,
                        size: 35,
                        color: Colors.black,
                      ),
                      title: "صناديق البريد",
                      onClick: () {
                        selectItem(context, 1);
                      }),
                  buildMenuItem(
                      icon: Icon(
                        MyFlutterApp.cash_in_hand,
                        size: 35,
                        color: Colors.black,
                      ),
                      title: "دفع الفواتير",
                      onClick: () {
                        selectItem(context, 2);
                      }),
                  buildMenuItem(
                      icon: Icon(
                        MyFlutterApp.access_denied,
                        size: 35,
                        color: Colors.black,
                      ),
                      title: "عدم المحكومية",
                      onClick: () {
                        selectItem(context, 3);
                      }),
                  buildMenuItem(
                      icon: Icon(
                        MyFlutterApp.visa_stamp,
                        size: 35,
                        color: Colors.black,
                      ),
                      title: "هواة الطوابع",
                      onClick: () {
                        selectItem(context, 4);
                      }),
                  Divider(
                    color: Colors.black,
                    height: 50,
                  ),
                  buildMenuItem(
                      icon: Icon(
                        Icons.contacts,
                        size: 35,
                        color: Colors.black,
                      ),
                      title: "التواصل مع البريد الفلسطيني",
                      onClick: () {
                        selectItem(context, 5);
                      }),
                ],
              ),
            ),
          ),
          body: Center(
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlay: true,
              ),
              items: imageList
                  .map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.asset(
                              e,
                              width: 1000,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }

  buildMenuItem(
      {required Icon icon, required String title, required Function onClick}) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(fontFamily: "amiri", fontSize: 15),
      ),
      onTap: () {
        onClick();
      },
    );
  }

  selectItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SearchPage()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PostalBoxPage()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PayPage()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => judgedPage()));
        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => strampsPage()));
        break;
      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ContactPost()));
    }
  }
}
