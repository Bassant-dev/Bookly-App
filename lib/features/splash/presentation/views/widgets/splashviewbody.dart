import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constant.dart';

class Splashviewbody extends StatefulWidget {
 const Splashviewbody ({Key? key}) : super(key: key);

  @override
  State<Splashviewbody> createState() => _SplashviewbodyState();
}

class _SplashviewbodyState extends State<Splashviewbody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigateToHome();


  }
  @override
  void dispose() {

    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
  Padding(
    padding: const EdgeInsets.all(30.0),
    child: Image.asset(AssetsData.logo),
  ),

 AnimatedBuilder
   (
   animation: slidingAnimation,
   builder: (context,_) {
     return SlideTransition(
       position:slidingAnimation ,
         child: const  Text('Read Free Books',textAlign: TextAlign.center,));
   }
 ),
],
    );
  }
  void initSlidingAnimation(){
    animationController =AnimationController(
        vsync: this,
        duration:const  Duration(seconds:1));
    slidingAnimation= Tween<Offset>(begin:const Offset(0,7) ,end:Offset.zero).animate(animationController);
    animationController.forward();
  }
  void navigateToHome(){
    Future.delayed(Duration(seconds: 2),(){
      // Get.to(()=>HomeView(),transition:Transition.fade,duration: TranstionDurtion);
      GoRouter.of(context).push(AppRouter.khomeview);
    });
  }

}
