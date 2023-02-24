import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../../Auth/presentation/pages/login/login_view.dart';
import 'custom_indicator.dart';
import 'custom_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
   pageController= PageController(
     initialPage:0
   )..addListener(() {
     setState(() {

     });
   });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
       children:  [
         CustomPageView(pageController: pageController,),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! *18,
          child: CustomIndicator(dotIndex: pageController!.hasClients ? pageController?.page : 0,)) ,
         Visibility(
           visible: pageController!.hasClients ? (pageController?.page ==2 ? false : true) : true,
           child: Positioned(
               top: SizeConfig.defaultSize! * 10,
               right: 32,
               child: Text('skip', style:
                 TextStyle(
                   fontSize: 14,
                   color: Color(0xff898989)
                 ),)),
         ),
         Positioned(
             right: SizeConfig.defaultSize! *10,
             left: SizeConfig.defaultSize! *10,
             bottom: SizeConfig.defaultSize! *8,
             child: CustomGeneralButton(text : pageController!.hasClients ? (pageController?.page ==2 ? 'Get Started' :'Next' ) : 'Next',

                  onTap: (){
               if(pageController!.page! <2 ){
                 pageController?.nextPage(
                     duration: Duration(milliseconds: 500),
                     curve: Curves.easeIn);
               }
               else{
                 Get.to(
                         ()=> LoginView() ,
                     transition :Transition.leftToRight ,
                   duration: Duration(milliseconds: 500));
               }
                  }
               ,))
       ],
    );
  }
}
