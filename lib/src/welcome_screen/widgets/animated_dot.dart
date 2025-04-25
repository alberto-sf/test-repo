import 'package:flutter/material.dart';

class AnimatedDot extends StatelessWidget {
  const AnimatedDot({
    required this.isSelected,
    super.key,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      height: 8,
      width: isSelected ? 16 : 8,
      decoration: BoxDecoration(
        color: isSelected
            ? const Color.fromRGBO(117, 86, 61, 1)
            : const Color.fromRGBO(234, 236, 240, 1),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
