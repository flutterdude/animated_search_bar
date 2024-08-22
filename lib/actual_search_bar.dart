import 'package:flutter/material.dart';

class ActualSearchBar extends StatefulWidget {
  final VoidCallback onBackTap;
  const ActualSearchBar({super.key, required this.onBackTap});

  @override
  State<ActualSearchBar> createState() => _ActualSearchBarState();
}

class _ActualSearchBarState extends State<ActualSearchBar> {
  TextInputType _textInputType = TextInputType.text;
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          InkWell(
            onTap: widget.onBackTap,
            child: Image.asset(
              "assets/back_arrow.png",
              height: 24,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                height: 60,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color(0xFF008296),
                      width: 2.0,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 16, right: 4),
                          child: Image.asset(
                            "assets/search_icon.png",
                            height: 24,
                            width: 24,
                          )),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, top: 2),
                          child: TextField(
                              controller: TextEditingController(),
                              keyboardType: _textInputType,
                              focusNode: _focusNode,
                              decoration: const InputDecoration(
                                hintText: "Search Amazon Pay",
                                hintStyle: TextStyle(fontSize: 18.0),
                                border: InputBorder.none,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (_textInputType == TextInputType.text) {
                _textInputType = TextInputType.number;
              } else {
                _textInputType = TextInputType.text;
              }
              setState(() {});
              print(_textInputType);
              Future.delayed(const Duration(milliseconds: 100), () {
                if (_focusNode.hasFocus) {
                  _focusNode.unfocus();
                  Future.delayed(const Duration(milliseconds: 100), () {
                    FocusScope.of(context).requestFocus(_focusNode);
                  });
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Image.asset(
                  _textInputType == TextInputType.text
                      ? "assets/numeric_keypad.png"
                      : "assets/text_keypad.png",
                  height: 40),
            ),
          ),
        ],
      ),
    );
  }
}
