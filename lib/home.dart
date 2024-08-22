import 'package:animated_search_bar/actual_search_bar.dart';
import 'package:flutter/material.dart';

import 'animated_search_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showAnimatedSearchBar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF0f0f0),
      appBar: AppBar(
        backgroundColor: const Color(0XFFFED851),
        title: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/amazon_pay.png",
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Image.asset(
                "assets/close.png",
                height: 16,
              ),
            ),
          ],
        ),
      ),
      body: ListView(children: <Widget>[
        showAnimatedSearchBar
            ? InkWell(
                onTap: () {
                  showAnimatedSearchBar = !showAnimatedSearchBar;
                  setState(() {});
                },
                child: AnimatedSearchBar())
            : ActualSearchBar(
                onBackTap: () {
                  showAnimatedSearchBar = !showAnimatedSearchBar;
                  setState(() {});
                },
              )
      ]),
    );
  }
}
