import 'package:flutter/material.dart';

class BadgeIconButton extends StatelessWidget {

  final IconData iconaction;
  final int badgecount;
  final Function() onPressed;
  const BadgeIconButton({super.key ,
    required this.iconaction ,
    required this.badgecount,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return  Badge(

    );
  }
}
