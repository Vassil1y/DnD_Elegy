import 'dart:ui';

import 'package:dnd_elegy/core_page/widgets/values_universal_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:expandable_page_view/expandable_page_view.dart';

class CorePage extends StatefulWidget {
  const CorePage({super.key});

  @override
  State<CorePage> createState() => _CorePageState();
}

class _CorePageState extends State<CorePage> {
  final PageController _pagecontroller = PageController(
    initialPage: 0,
  );
  String selectedPage = "0";
  List<String> iconsPaths = [
    "coins.png",
    "health.png",
    "energy.png",
    "weight.png"
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const Image(
          image: AssetImage('appbar_background.png'),
          fit: BoxFit.cover,
        ),
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ValuesUniversalWidget(
              value: "100",
              icon: iconsPaths[0],
            ),
            ValuesUniversalWidget(
              value: "",
              icon: iconsPaths[1],
            ),
            ValuesUniversalWidget(
              value: "",
              icon: iconsPaths[2],
            ),
            ValuesUniversalWidget(
              value: "100",
              icon: iconsPaths[3],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height-100,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage("_authBackground.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ExpandablePageView(
                    controller: _pagecontroller,
                    onPageChanged: (value) {
                      setState(() {
                        selectedPage = value.toString();
                        _currentIndex = value;
                      });
                    },
                    // onPageChanged: ,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage("_authBackground.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage("_authBackground.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage("_authBackground.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            _pagecontroller.jumpToPage(
              index,
            );
          });
        },
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                "news.png",
                width: 30,
                height: 30,
                color: _currentIndex == 0 ? Colors.white : Colors.black,
              ),
              label: "",
              backgroundColor: Colors.blue),
          const BottomNavigationBarItem(
              icon: Icon(Icons.abc), label: "", backgroundColor: Colors.purple),
          const BottomNavigationBarItem(
              icon: Icon(Icons.abc), label: "", backgroundColor: Colors.grey),
          const BottomNavigationBarItem(
              icon: Icon(Icons.abc), label: "", backgroundColor: Colors.amber),
        ],
      ),
    );
  }
}
