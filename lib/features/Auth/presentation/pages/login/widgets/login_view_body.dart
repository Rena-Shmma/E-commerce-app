import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/utils/size_config.dart';
import '../../../../../../core/widgets/custom_buttons.dart';
import '../../../../../../core/widgets/space_widget.dart';
import '../../complete_information/complete_information_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(value: 10),
        SizedBox(
          child: Image.asset(kLogo),
          height: SizeConfig.defaultSize! * 17,
        ),
        const Text('Fruit Market',
          style: TextStyle(
              fontSize: 51,
              color: kMainColor,
              fontWeight: FontWeight.w700
          ),),
        Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtnWithIcon(
                    color: Color(0xffdb3236),
                   // iconData : Icons.g_translate,
                    text: 'Log In With Google',
                    onTap:(){
                      Get.to(()=> CompleteInformationView(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft
                      );
                    },
                  ),
                )),
            Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtnWithIcon(
                    color: Color(0xff4267b2),
                   // iconData :Icons.ac_unit,
                    text: 'Log In With Facebook',
                    onTap:(){
                      Get.to(()=> CompleteInformationView(),
                          duration: Duration(milliseconds: 500),
                          transition: Transition.rightToLeft
                      );
                    },
                  ),
                )),
          ],
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }
}
