//
// import 'package:flutter/material.dart';
//
// void main(){
//  runApp(MyApp());
//
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:HomeScreen(),
//       debugShowCheckedModeBanner: false ,
//     );
//   }
// }
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
//   late AnimationController controller;
//   late Animation<double> sizeAnimation;
//
//   @override
//   void initState() {
//
//     // TODO: implement initState
//     super.initState();
//     controller=AnimationController(duration: Duration(seconds: 6),vsync: this);
//     sizeAnimation=Tween<double>(begin: 0.0,end: 200).animate(controller);
//     controller.forward();
//   }
//   @override
//   void dispose() {
//     controller.dispose();
//     // TODO: implement dispose
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: AnimatedBuilder(animation: sizeAnimation, builder: (context, child) {
//           return Container(
//             width: sizeAnimation.value ,
//             height: sizeAnimation.value,
//             color: Colors.blue,
//           );
//         },),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(),);
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  late AnimationController controller;
  late Animation<double> sizeAnimation;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    controller=AnimationController(duration: Duration(seconds: 4),vsync: this);
    sizeAnimation=Tween<double>(begin: 5,end: 200).animate(controller);
    controller.forward();
  }
  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(animation: sizeAnimation, builder: (context, child) {
          return Container(width: sizeAnimation.value,height: sizeAnimation.value,color: Colors.red,);
        },),
      ),
    );
  }
}
