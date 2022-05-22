import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:palestinepost/constants/api.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController textEditingController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Map data = {};
  Future<void> search() async {
    try {
      debugPrint(textEditingController.text);
      var response = await http
          .post(Uri.parse(API.searchApi + '?${textEditingController.text}'));

      data = jsonDecode(response.body);
    } catch (e) {
      debugPrint('error');
      data = {};
      _scaffoldKey.currentState!.showSnackBar(SnackBar(
        content: Text(
          'حدث خطأ ما !',
        ),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 2),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            key: _scaffoldKey,
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                "تتبع بريدك",
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
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/000 (1).jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Text(
                            'تتبع البريد الخاص بك',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              fontFamily: "amiri",
                            ),
                          ),
                          const Text(
                            "لتتبع البريد الخاص بك يرجى اضافة الرقم التسلسلي الخاص ببريدك في خانة البحث ادناه. ",
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: "amiri",
                              fontSize: 20,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 50.0),
                          ),
                          TextField(
                            controller: textEditingController,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  textEditingController.clear();
                                },
                                icon: const Icon(
                                  Icons.clear,
                                  color: Colors.black54,
                                ),
                              ),
                              labelText: 'الرقم التسلسي الخاص بك ',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide:
                                    const BorderSide(color: Colors.black54),
                              ),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                search();
                              },
                              child: Text('بحث')),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  child: Text('id : ${data['id'] ?? ''}')),
                              Container(
                                  child: Text('name : ${data['name'] ?? ''}')),
                              Container(
                                  child: Text(
                                      'Tracking Number : ${data['tracking_number'] ?? ''}')),
                              Container(
                                  child:
                                      Text('phone : ${data['phone'] ?? ''}')),
                              Container(
                                  child:
                                      Text('status : ${data['status'] ?? ''}')),
                              Container(
                                  child: Text(
                                      'Status Description : ${data['StatusDescription'] ?? ''}')),
                              Container(
                                  child: Text(
                                      'Address : ${data['address'] ?? ''}')),
                              Container(
                                  child: Text(
                                      'area id : ${data['area_id'] ?? ''}')),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
