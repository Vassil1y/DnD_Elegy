import 'package:flutter/material.dart';

void main() {
  //flutter build web --web-renderer html --release
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // width: 100,
      decoration: const BoxDecoration(
        color: Colors.pink,
        image: DecorationImage(
          image: NetworkImage(
              'https://catherineasquithgallery.com/uploads/posts/2021-03/1614633626_77-p-kiberpank-fon-dlya-fotoshopa-99.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Text(
          "Coming soon...",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'New_Zelek',
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
        // body: Container(
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage("assets/images/bulb.jpg"),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        //   child:
        //   Center(child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Row(
        //         children: [
        //           Container(
        //             padding: EdgeInsets.all(20),
        //                 width: 200,
        //                 height: 200,
        //                 decoration: const BoxDecoration(
        //                   boxShadow: <BoxShadow>[
        //                     BoxShadow(
        //                         color: Color.fromARGB(137, 168, 19, 19),
        //                         blurRadius: 40.0,
        //                         offset: Offset(0.0, 0.75))
        //                         ,
        //                   ],
        //                 ),
        //                 child: ClipPath(
        //             clipper: MyCustomClipper(), // <--
        //             child: Flexible(
        //               flex: 1,
        //               fit: FlexFit.tight,
        //               child: Container(
        //                 width: 200,
        //                 height: 200,
        //                 decoration: const BoxDecoration(
        //                   boxShadow: <BoxShadow>[
        //                     BoxShadow(
        //                         color: Colors.black54,
        //                         blurRadius: 50.0,
        //                         offset: Offset(0.0, 1))
        //                   ],
        //                 ),
        //                 child: Image.network(
        //                     width: 100,
        //                     height: 100,
        //                     fit: BoxFit.fitHeight,
        //                     "https://picsum.photos/250?image=9"),
        //               ),
        //             ),
        //           ),),
        //           ClipPath(
        //             clipper: MyCustomClipper(), // <--
        //             child: Flexible(
        //               flex: 1,
        //               fit: FlexFit.tight,
        //               child: Image.network("https://picsum.photos/250?image=9"),
        //             ),
        //           ),
        //           ClipPath(
        //             clipper: MyCustomClipper(), // <--
        //             child: Flexible(
        //               flex: 1,
        //               fit: FlexFit.tight,
        //               child: Image.network("https://picsum.photos/250?image=9"),
        //             ),
        //           ),
        //         ],
        //       ),
        //       const Text(
        //         'You have pushed the button this many times:',
        //       ),
        //       Text(
        //         '$_counter',
        //         style: Theme.of(context).textTheme.headline4,
        //       ),
        //     ],
        //   ),
        // ),),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ),

