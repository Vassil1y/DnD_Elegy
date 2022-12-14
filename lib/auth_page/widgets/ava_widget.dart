import 'package:dnd_elegy/auth_page/auth_page_main.dart';
import 'package:dnd_elegy/core_page/core_page.dart';
import 'package:flutter/material.dart';

import 'custom_clipper.dart';

class AvaWidget extends StatefulWidget {
  final String ava_image_path;
  const AvaWidget({required this.ava_image_path, super.key});

  @override
  State<AvaWidget> createState() => _AvaWidgetState();
}

class _AvaWidgetState extends State<AvaWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CorePage()),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.white, blurRadius: 20.0, offset: Offset(0.0, 1)),
          ],
        ),
        child: ClipPath(
          clipper: MyCustomClipper(), // <--
          child: Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 50.0,
                    offset: Offset(0.0, 1))
              ],
            ),
            child: Image.network(widget.ava_image_path),
          ),
        ),
      ),
    );
  }
}
