import 'package:flutter/material.dart';
import 'package:mine/core/widgets/space_widget.dart';

import '../constants.dart';
import '../utils/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
   CustomGeneralButton({required this.text, this.onTap}) ;

   final String? text;
   final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(

          color: kMainColor,
          borderRadius: BorderRadius.circular(8),

        ),
        child: Center(
          child: Text( text!,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xffffffff),
            fontWeight: FontWeight.w500
          ),),
        ),
      ),
    );
  }
}

class CustomButtnWithIcon extends StatelessWidget {
  const CustomButtnWithIcon({Key? key,required this.text,
    //required this.iconData,
    required this.onTap,required this.color}) : super(key: key);

  final String? text;
 // final IconData? iconData;
  final VoidCallback? onTap;
  final Color? color;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          border: Border.all(color: Color (0xff707070)),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.asset('assets/images/images.png'),
            // Icon (
            //   iconData, color: color,
            // ),
           // HorizontalSpace(value: 2),
            Text( text!,
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w600
              ),textAlign: TextAlign.left,),
          ],
        )
      ),
    );
  }
}

