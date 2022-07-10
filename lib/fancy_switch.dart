library fancy_switch;

import 'package:flutter/material.dart';

class FancySwitch extends StatefulWidget {
  final bool value;
  final Function onChanged;
  final double height;
  final String activeModeBackgroundImage;
  final String inactiveModeBackgroundImage;
  final Color activeThumbColor;
  final Image? activeThumbImage;
  final Color inactiveThumbColor;
  final Image? inactiveThumbImage;
  const FancySwitch({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.height,
    required this.inactiveModeBackgroundImage,
    required this.activeModeBackgroundImage,
    this.activeThumbColor = Colors.white,
    this.activeThumbImage,
    this.inactiveThumbColor = Colors.white,
    this.inactiveThumbImage,
  }) : super(key: key);

  @override
  State<FancySwitch> createState() => _FancySwitchState();
}

class _FancySwitchState extends State<FancySwitch> {
  @override
  Widget build(BuildContext context) {
    const aspectRatio = (57 / 25);
    return GestureDetector(
      onTap: () => widget.onChanged(),
      child: SizedBox(
        height: widget.height,
        width: aspectRatio * widget.height,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular((16 / 25) * widget.height),
              child: Image.asset(
                widget.value
                    ? widget.activeModeBackgroundImage
                    : widget.inactiveModeBackgroundImage,
                height: widget.height,
                width: aspectRatio * widget.height,
                fit: BoxFit.cover,
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              padding:
                  EdgeInsets.symmetric(horizontal: (2 / 25) * widget.height),
              alignment:
                  widget.value ? Alignment.centerRight : Alignment.centerLeft,
              child: ClipOval(
                child: Container(
                  height: (4 / 5) * widget.height,
                  width: (4 / 5) * widget.height,
                  decoration: BoxDecoration(
                    color: widget.value
                        ? widget.activeThumbColor
                        : widget.inactiveThumbColor,
                  ),
                  child: widget.value
                      ? widget.activeThumbImage
                      : widget.inactiveThumbImage,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
