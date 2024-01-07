import 'package:flutter/material.dart';

class ColoredSafeArea extends StatelessWidget {
  final Widget child;
  final Color? color;
  const ColoredSafeArea({
    Key? key,
    required this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ??
          Theme //?? double question mark operator means "if null"
                  .of(context)
              .appBarTheme
              .backgroundColor,
      child: SafeArea(maintainBottomViewPadding:true ,top: true,bottom: true,
        child: Container(
          color: Theme.of(context).colorScheme.background,
          child: child,
        ),
      ),
    );
  }
}
//Use ThemeData.from(colorScheme: colorScheme) to construct the ThemeData from the color scheme
