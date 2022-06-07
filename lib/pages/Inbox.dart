import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  static const String id = "InboxPage";

  const InboxPage({Key? key}) : super(key: key);

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.18),
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.45,
            decoration: BoxDecoration(
              color: Colors.white,
              image:
                  DecorationImage(image: AssetImage("assets/images/img_7.png")),
            ),
          ),
          Text(
            "Inbox.inbox1",
            style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
          ).tr(),
        ],
      )),
    );
  }
}
