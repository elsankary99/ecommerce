import 'package:ecommerce/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Choose Language",
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 20),
              CustomButtonLang(onPressed: () {}, title: 'Arabic'),
              const SizedBox(height: 20),
              CustomButtonLang(onPressed: () {}, title: 'English'),
            ],
          ),
        ),
      ),
    );
  }
}
