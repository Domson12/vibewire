import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final Widget child;
  final Function()? onPressed;
  final Color foregroundColor;
  final Color backgroundColor;

  const AppElevatedButton({
    Key? key,
    required this.child,
    this.onPressed,
    required this.foregroundColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
        ),
        child: child,
      ),
    );
  }
}
