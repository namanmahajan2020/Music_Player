import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final Widget? ChilD;
  const NeuBox({super.key, required this.ChilD});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primaryContainer,
            blurRadius: 15,
            offset: const Offset(4, 4),
          ),
          BoxShadow(
            color: Theme.of(context).colorScheme.onPrimary,
            blurRadius: 15,
            offset: const Offset(-4, -4),
          ),
        ],
      ),
      padding: EdgeInsets.all(12),
      child: ChilD,
    );
  }
}
