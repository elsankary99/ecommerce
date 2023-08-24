import 'package:flutter/material.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String titleLarge;
  final String titleSmall;
  const CustomTextBodyAuth(
      {super.key, required this.titleLarge, required this.titleSmall});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titleLarge,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 24),
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.center,
          child: Text(
            titleSmall,
            textAlign: TextAlign.center,
            style:
                Theme.of(context).textTheme.titleSmall!.copyWith(height: 1.5),
          ),
        ),
      ],
    );
  }
}
