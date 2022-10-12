import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final String title;
  final Color color;
  final Function() onPressed;

  const CustomMaterialButton({
    super.key,
    required this.title,
    this.color = Colors.blue,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      highlightElevation: 0,
      disabledElevation: 0,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      color: color,
      textColor: Colors.white,
      onPressed: onPressed,
      height: 42,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 16,
              letterSpacing: .5,
            ),
      ),
    );
  }
}
