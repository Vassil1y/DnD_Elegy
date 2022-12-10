import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class AuthPageMain extends StatelessWidget {
  const AuthPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // width: 100,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('_authbackground.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
