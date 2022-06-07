import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Manage_order extends StatefulWidget {
  static const String id = "manage_order";

  const Manage_order({Key? key}) : super(key: key);

  @override
  State<Manage_order> createState() => _Manage_orderState();
}

class _Manage_orderState extends State<Manage_order> {
  Color yashil = Color(0xff00ff00);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.35,
                bottom: MediaQuery.of(context).size.height * 0.04),
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              color: Colors.white,
              image:
                  DecorationImage(image: AssetImage("assets/images/img_8.png")),
            ),
          ),
          Text(
            "Manage_orders.manage1",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ).tr(),
          Text(
            "Manage_orders.manage2",
            style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
          ).tr(),
          Text(
            "Manage_orders.manage3",
            style: TextStyle(fontSize: 20, color: yashil),
          ).tr(),

        ],
      )),
    );
  }
}
