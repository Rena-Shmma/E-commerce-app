import 'package:flutter/material.dart';
import 'package:mine/features/on%20boarding/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key,required this.pageController}) : super(key: key);
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,

      children: [
        PageViewItem(
            image: 'assets/images/Capture1.PNG',
            title: 'E Shopping',
            subtitle: 'explore top organic fruits & grab them'),
        PageViewItem(
            image: 'assets/images/Capture2.PNG',
            title: 'Delivery On The Way',
            subtitle: 'get your order by speed delivery'),
        PageViewItem(
            image: 'assets/images/3.PNG',
            title: 'Delivery Arrived',
            subtitle: 'orderis arrived at your place'),

      ],
    );
  }
}
