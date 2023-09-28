import 'package:flutter/material.dart';


class AppElevatedButton extends StatelessWidget {

  final Color? foregroundColor;
  final Color? backgroundColor;
  final Function()? onPressed;
  final Widget child;

  const AppElevatedButton({
    Key? key,
    this.foregroundColor,
    this.backgroundColor,
    this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: child,
      ),
    );
  }
}
