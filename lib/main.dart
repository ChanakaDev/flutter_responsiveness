// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Responsive',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Step 01: Wrap inside SafeArea
//       body: SafeArea(
//         // Step 02: Wrap inside Layoutbuilder
//         child: LayoutBuilder(builder: (context, constraints) {
//           // Step 03: Define breakpoints
//           if (constraints.maxWidth < 640) {
//             // mobile phone
//             return Column(
//               children: [
//                 bannerBuilder(),
//                 textBuilder(),
//               ],
//             );
//           } else {
//             // tablet
//             return Row(
//               children: [
//                 bannerBuilder(),
//                 // Step 05: Some space in between
//                 const SizedBox(
//                   width: 24,
//                 ),
//                 // Step 04: fixing text overflow
//                 Expanded(child: textBuilder()),
//               ],
//             );
//           }
//         }),
//       ),
//     );
//   }

//   Text textBuilder() {
//     return const Text(
//       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
//       style: TextStyle(fontSize: 18),
//     );
//   }

//   Container bannerBuilder() {
//     return Container(
//       width: 320,
//       height: 180,
//       decoration: BoxDecoration(
//           gradient: const LinearGradient(colors: [Colors.red, Colors.pink]),
//           borderRadius: BorderRadius.circular(12)),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_responsiveness/responsive_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Responsive',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ResponsiveWidget(
          mobile: Column(
            children: [
              bannerBuilder(),
              textBuilder(),
            ],
          ),
          tablet: Row(
            children: [
              bannerBuilder(),
              const SizedBox(
                width: 24,
              ),
              Expanded(child: textBuilder()),
            ],
          )),
    ));
  }

  Text textBuilder() {
    return const Text(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      style: TextStyle(fontSize: 18),
    );
  }

  Container bannerBuilder() {
    return Container(
      width: 320,
      height: 180,
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [Colors.red, Colors.pink]),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
