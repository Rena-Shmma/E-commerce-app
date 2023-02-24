import 'package:flutter/material.dart';
import '../../../../../../core/widgets/custom_buttons.dart';

import '../../../../../../core/widgets/space_widget.dart';
import 'complete_information_item.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          VerticalSpace( value: 5,),
          CompleteInfoItem(
            text: 'Enter your name'
          ),
          VerticalSpace( value: 2,),
          CompleteInfoItem(
              text: 'Enter your phone number'
          ),
          VerticalSpace( value: 2,),
          CompleteInfoItem(
              text: 'Enter your address',
            maxLines: 5
          ),
          VerticalSpace(value: 5),
          CustomGeneralButton(text: 'Login')
        ],
      ),
    );
  }
}
