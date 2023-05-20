import 'package:flutter/material.dart';

import '../Cursor/animated-circle_cursor.dart';

class PaddedIcon extends StatefulWidget {
  final IconData icon;
  final double? padding;
  final Color color;
  const PaddedIcon(
      {Key? key, required this.icon, this.padding, required this.color})
      : super(key: key);

  @override
  State<PaddedIcon> createState() => _PaddedIconState();
}

class _PaddedIconState extends State<PaddedIcon> {
  @override
  Widget build(BuildContext context) {
    return AnimatedCircleCursorMouseRegion(
      child: MouseRegion(
        cursor: SystemMouseCursors.move,
        onEnter: (event) => setState(() => isHovering = true),
        onExit: (event) => setState(() => isHovering = false),
        child: Padding(
          padding: widget.padding != null
              ? EdgeInsets.all(widget.padding!)
              : const EdgeInsets.all(8.0),
          child: InkWell(
            onHover: (value) => _onHover(value),
            child: Transform.scale(
              scale: isHovering ? 1.6 : 1.0,
              child: Icon(
                widget.icon,
                color: widget.color,
                //color: Color(0xff3B5999),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool isHovering = false;

  void _onHover(bool value) {
    if (value != isHovering) {
      setState(() {
        isHovering = value;
      });
    }
  }
}
