import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amberAccent,
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
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 140.0)),
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
                      "لتتبع البريد الخاص بك يرجى اضافة الرقم التسلسلي الخاص ببريدك  ",
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: "amiri",
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      " في خانة البحث ادناه ",
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
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.clear,
                            color: Colors.black54,
                          ),
                          onPressed: () {},
                        ),
                        labelText: 'الرقم التسلسي الخاص بك ',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(color: Colors.black54),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
