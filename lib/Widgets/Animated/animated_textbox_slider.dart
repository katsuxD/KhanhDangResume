import 'package:flutter/material.dart';
import '../Cursor/animated-circle_cursor.dart';
import '../Text/poppins.dart';

class AnimatedTextboxSlider extends StatefulWidget {
  final IconData icon;
  final String title;
  final double? width;
  final Color? color;
  final Function() onpressed;
  final String tabData;

  const AnimatedTextboxSlider({
    Key? key,
    required this.icon,
    required this.title,
    this.width,
    this.color,
    required this.onpressed,
    required this.tabData,
  }) : super(key: key);

  @override
  State<AnimatedTextboxSlider> createState() => _AnimatedTextboxSliderState();
}

class _AnimatedTextboxSliderState extends State<AnimatedTextboxSlider> {
  bool showText = false;
  bool prevSelected = false;
  double adjustWidth() {
    if (showText) {
      return widget.width ?? 250;
    } else {
      if (widget.tabData == widget.title) {
        setState(() {
          showText == true;
        });
        return widget.width ?? 250;
      } else {
        return 130;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.tabData != widget.title && prevSelected == true) {
      setState(() {
        showText = false;
        prevSelected = false;
      });
    }

    return GestureDetector(
      onTap: () {
        widget.onpressed();
        setState(() {
          prevSelected = true;
        });
      },
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            showText = true;
          });
        },
        onExit: (event) {
          if (widget.tabData != widget.title) {
            setState(() {
              showText = false;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: AnimatedCircleCursorMouseRegion(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 10),
              height: 130,
              width: adjustWidth(),
              decoration: BoxDecoration(
                  color: widget.tabData == widget.title
                      ? widget.color
                      : Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.01),
                      spreadRadius: 10,
                      blurRadius: 20,
                    ),
                  ]),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Icon(
                          widget.icon,
                          size: 35,
                          color: widget.tabData == widget.title
                              ? Colors.white
                              : widget.color,
                        ),
                      ),
                      showText
                          ? const SizedBox(
                              width: 30,
                            )
                          : Container(),
                      showText
                          ? Poppins(
                              text: widget.title,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: widget.tabData == widget.title
                                  ? Colors.white
                                  : widget.color,
                            )
                          : Container()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
