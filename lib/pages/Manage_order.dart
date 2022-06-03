import 'package:flutter/material.dart';
class Manage_order extends StatefulWidget {
  static const String id = "manage_order";
  const Manage_order({Key? key}) : super(key: key);

  @override
  State<Manage_order> createState() => _Manage_orderState();
}

class _Manage_orderState extends State<Manage_order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Manage order"),
      ),
    );
  }
}
