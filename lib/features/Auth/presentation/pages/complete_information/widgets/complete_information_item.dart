import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_text_field.dart';
import '../../../../../../core/widgets/space_widget.dart';
class CompleteInfoItem extends StatelessWidget {
  const CompleteInfoItem({Key? key, required this.text, this.textInputType, this.maxLines}) : super(key: key);

  final String text;
  final TextInputType? textInputType;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text ,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          color: Color(0xff0c0b0b),
          height: 1.56),),
        VerticalSpace(value: 2),
        CustomTextFormField(
          maxLines: maxLines,
          textInputType: textInputType,
          onSaved: null,
        ),

      ],
    );
  }
}
