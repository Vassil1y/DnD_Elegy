import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ValuesUniversalWidget extends StatelessWidget {
  final String value;
  final String icon;
  const ValuesUniversalWidget(
      {required this.value, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.2),
        border: Border.all(color: Colors.blue.withOpacity(0.4)),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Image.network(
                icon,
                height: 15,
                width: 20,
                color: Colors.blue,
              ),
            ),
            Text(
              value,
              style: TextStyle(color: Colors.blue, fontFamily: "NewZelek", fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
