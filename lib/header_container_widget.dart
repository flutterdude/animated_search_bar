import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:flutter/material.dart';

class HeaderContainerWidget extends StatelessWidget {
  const HeaderContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0XFFFED851),
            Color(0XFFFEDB5D),
            Color(0XFFF3EACD),
            Color(0XFFF0F0F0)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const SizedBox(
        height: 200,
        child: Column(
          children: [
            AnimatedSearchBar()
          ],
        ),
      ),
    );
  }
}
