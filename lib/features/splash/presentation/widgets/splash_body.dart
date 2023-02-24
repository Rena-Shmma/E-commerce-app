import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/utils/size_config.dart';
import '../../../on boarding/presentation/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation = Tween<double>(begin: 0.2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
   animationController?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().int(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Spacer(),
          // AnimatedBuilder(
          //   animation: fadingAnimation!,
          //  builder:(context, _)=>   Opacity(
             FadeTransition(
              opacity: fadingAnimation!,
              child: const Text('Fruit Market',
                style: TextStyle(
                    fontSize: 51,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700
                ),),
            ),

          Spacer(),
          Container(
            width: double.infinity,
              child: Image.asset('assets/images/e_commerce_fruits.PNG',
              fit: BoxFit.fitWidth,),
          )

          // Text.rich(
          //     TextSpan(
          //         style: TextStyle (
          //             fontSize: 51,
          //             color: Color(0xffffffff)
          //         ),
          //       children: [
          //         TextSpan(
          //           text:'F',
          //           style: TextStyle(
          //             fontWeight: FontWeight.w700
          //           )
          //         ),
          //
          //         TextSpan(
          //             text:'ruit Market',
          //             style: TextStyle(
          //               fontSize: 42,
          //                 fontWeight: FontWeight.w700
          //             )
          //         )
          //       ]
          //     ),
          // textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
          //   textAlign: TextAlign.center,
          // ),

        ]

      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration( seconds: 3),
        (){
        Get.to(()=> OnBoardingView(), transition: Transition.fade);
        }
     );
  }
}
