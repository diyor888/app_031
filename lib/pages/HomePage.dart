import 'package:app_031/pages/Categories.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  static const String id = "homepage";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color yashil = Color(0xff00ff00);
  bool test = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey.shade300,
        elevation: 4,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "fiverr",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              ".",
              style: TextStyle(
                  fontSize: 35,
                  color: Color(0xff0AAF02),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            splashColor: Color(0xff00ff00),
            onPressed: () {
              if (test) {
                context.locale = Locale("en", "US");
              } else {
                context.locale = Locale("uz", "UZ");
              }
              setState(() {
                test = !test;
              });
            },
            icon: Icon(
              Iconsax.translate,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              // Search services
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                padding: EdgeInsets.only(left: 10, top: 8),
                height: MediaQuery.of(context).size.height * 0.075,
                width: MediaQuery.of(context).size.width * 0.951,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(width: 0.9, color: Colors.grey.shade400),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      spreadRadius: 4,
                      offset: Offset(1, 0.6),
                    ),
                  ],
                ),
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "example.one".tr(),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              // Popular Services
              Container(
                height: MediaQuery.of(context).size.height * 0.065,
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'example.two',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ).tr(),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "example.three",
                        style: TextStyle(fontSize: 20, color: yashil),
                      ).tr(),
                    )
                  ],
                ),
              ),
              // Rasmlar
              Container(
                height: MediaQuery.of(context).size.height * 0.266,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _iteams(image1: "assets/images/img.png", text1: "4"),
                      _iteams(image1: "assets/images/img_1.png", text1: "5"),
                      _iteams(image1: "assets/images/img_2.png", text1: "6"),
                      _iteams(image1: "assets/images/img_3.png", text1: "7"),
                      _iteams(image1: "assets/images/img_4.png", text1: "8"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                    ],
                  ),
                ),
              ),
              // Made on fiverr
              Container(
                margin: EdgeInsets.only(top: 18, bottom: 10),
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.93,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_6.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 6),
                      height: MediaQuery.of(context).size.height * 0.035,
                      // width: MediaQuery.of(context).size.width * 0.35,
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 30,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "9",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ).tr(),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 50, bottom: 20),
                      child: Text(
                        "10",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ).tr(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _iteams({image1, text1}) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 5, bottom: 8, right: 5),
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.41,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: 2,
                blurRadius: 3.5,
                offset: Offset(1, 3)),
          ]),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(image1),
                fit: BoxFit.cover,
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.41,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 1, bottom: 1, left: 7, right: 7),
              child: Center(
                child: Text(
                  text1,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ).tr(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
