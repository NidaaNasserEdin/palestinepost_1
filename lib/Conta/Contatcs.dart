import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Custom.dart';

class ContactPost extends StatefulWidget {
  @override
  _ContactPostState createState() => _ContactPostState();
}

class _ContactPostState extends State<ContactPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'التواصل مع البريد الفلسطيني',
            style: TextStyle(
              fontFamily: "amiri",
              fontWeight: FontWeight.bold,
              color: Colors.black54,
              fontSize: 20,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(48.0),
            ),
          ),
          backgroundColor: Colors.amberAccent,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/000 (1).jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Container(
                    alignment: Alignment(0.0, 2.5),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(""
                          "images/logo1.jpg"),
                      radius: 60.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                "البريد الفلسطيني ",
                style: TextStyle(
                    fontFamily: "amiri",
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "للتواصل مع البريد الفلسطيني يرجى الضغط على احدى الوسائل المرفقة ادناه ",
                style: TextStyle(
                    fontFamily: "amiri",
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.w300),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(20.0),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  //alignment: WrapAlignment.end,
                  // runAlignment: WrapAlignment.center,
                  runSpacing: 10,
                  spacing: 10,
                  children: <Widget>[
                    TextButton(
                      onPressed: () async {
                        const url =
                            'http://www.mtit.pna.ps/?fbclid=IwAR2XyxP4bGQ3xbwLdpkLo_DJAYZti1_vZbvSFPRDMdfqk7UMsOGrh2tDyAQ';
                        if (await canLaunch(url)) {
                          await launch(url, forceWebView: true);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const CustomWidget(
                        icon: Icons.language,
                        label: 'Open a URL',
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        String email = 'info@palpost.ps';
                        String subject = 'This is a test email';
                        String body = 'This is a test email body';
                        String emailUrl =
                            "mailto:$email?subject=$subject&body=$body";

                        if (await canLaunch(emailUrl)) {
                          await launch(emailUrl);
                        } else {
                          throw "Can't phone that number.";
                        }
                      },
                      child: const CustomWidget(
                        icon: Icons.forward_to_inbox,
                        label: 'Send an email',
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        String telephoneNumber = '(+970) 8 282-9777';
                        String telephoneUrl = "tel:$telephoneNumber";

                        if (await canLaunch(telephoneUrl)) {
                          await launch(telephoneUrl);
                        } else {
                          throw "Error occured trying to call that number.";
                        }
                      },
                      child: const CustomWidget(
                        icon: Icons.call,
                        label: 'Call a phone\nnumber',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
