// import 'package:brain_bytes/Components/category_list.dart';
// import 'package:brain_bytes/Components/person_list.dart';
import 'package:brain_bytes/Screens/login_screen.dart';
// import 'package:brain_bytes/consts/category_list.dart';
// import 'package:brain_bytes/consts/person_class.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'M',
      theme: ThemeData(),
      home: const LoginScreen(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             backgroundColor: Colors.white,
//             centerTitle: true,
//             title: Image.asset("assets/Images/Vector.png"),
//             leading: IconButton(
//               icon: Image.asset("assets/Images/icon.png"),
//               onPressed: () {},
//             )),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             const Padding(
//               padding: EdgeInsets.fromLTRB(15.0, 15.0, 0, 0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Category",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 15.0,
//             ),
//             SingleChildScrollView(
//               padding: const EdgeInsets.only(left: 10),
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                   children: List.generate(
//                 categoryList.length,
//                 (index) => Category(
//                   item: categoryList[index],
//                 ),
//               )),
//             ),
//             const SizedBox(
//               height: 20.0,
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.6,
//               child: SingleChildScrollView(
//                 padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
//                 child: Column(
//                     children: List.generate(personInfo.length,
//                         (index) => ListInformation(info: personInfo[index]))),
//               ),
//             )
//           ],
//         ));
//   }
// }
