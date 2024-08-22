import 'package:flutter/material.dart';
import 'fading_text_animation.dart';
class AnimatedSearchBar extends StatelessWidget {
  const AnimatedSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 54,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xFFABAAA6),
              width: 1.0,
            ),
          ),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Image.asset(
                "assets/search_icon.png",
                height: 24,
                width: 24,
              ),
            ),
            const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FadingTextAnimation(texts: [
                      "Search Amazon Pay",
                      "Search for billers or contacts",
                      "Pay by name or phone number"
                    ])
                  ],
                ))
          ]),
        ),
      ),
    );
  }
}
