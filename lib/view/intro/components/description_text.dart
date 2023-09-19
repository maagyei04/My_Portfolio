import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 500),
      builder: (context, value, child) {
        return Text(
          'I\'m capable of creating excellent websites, web apps and ${Responsive.isLargeMobile(context) ? '\n' : ''}mobile apps, handling every step from ${!Responsive.isLargeMobile(context) ? '\n' : ''}concept to  ${!Responsive.isLargeMobile(context) ? '\n' : ''} ${Responsive.isLargeMobile(context) ? '\n' : ''}deployment. Feel free to go through the websites using ${Responsive.isLargeMobile(context) ? '\n' : ''}the above Navbar. NB: Built this website using Flutter.',
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
        );
      },
    );
  }
}