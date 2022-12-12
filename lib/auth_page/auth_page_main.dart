import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

import 'widgets/ava_widget.dart';

class AuthPageMain extends StatelessWidget {
  const AuthPageMain({super.key});
  final String dasha_path = "ava_dasha.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // width: 100,
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage("_authbackground.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Material(
            type: MaterialType.transparency,
            child: Text(
              "Начни свою историю!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'New_Zelek',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AvaWidget(
                  ava_image_path: dasha_path,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
