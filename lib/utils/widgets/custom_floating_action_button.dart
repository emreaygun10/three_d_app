import 'package:flutter/material.dart';

final class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
    required this.onPress,
    required this.icon,
  });
  final VoidCallback onPress;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: UniqueKey(),
      onPressed: onPress,
      child: Icon(icon),
    );
  }
}
