import 'package:flutter/material.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, required this.title, required this.subtitle,required this.image}) : super(key: key);

  final String? title;
  final String? subtitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        VerticalSpace(value: 17),
     //const VerticalSpace(5),
      SizedBox(
        height: SizeConfig.defaultSize! *20 ,
       // width: double.infinity,
        child: Image.asset(image!),
      ),

        VerticalSpace(value: 2.5),
        Text(title!,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),),
       VerticalSpace(value: 1.5),
        Text(subtitle!,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize:15,
            color: const Color(0xFF78787c)
          ),),
      ],
    );
  }
}
