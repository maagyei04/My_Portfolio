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
          'I\'m capable of creating excellent websites, ${Responsive.isMobile(context) ? '\n' : ''}web apps and ${Responsive.isLargeMobile(context) ? '\n' : ''}mobile apps, ${!Responsive.isLargeMobile(context) ? '\n' : ''}handling every step from${Responsive.isMobile(context) ? '\n' : ''} concept to deployment.${!Responsive.isLargeMobile(context) ? '\n' : ''}${Responsive.isLargeMobile(context) ? '\n' : ''}Feel free to go through the websites using ${Responsive.isLargeMobile(context) ? '\n' : ''}the above Navbar. ${!Responsive.isLargeMobile(context) ? '\n' : ''}',
          maxLines: 6,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
        );
      },
    );
  }
}