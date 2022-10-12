import 'package:flutter/material.dart';

class AnimatedPageSelector extends StatefulWidget {
  const AnimatedPageSelector(
      {Key? key,
      required this.tabController,
      required this.duration,
      required this.backgroundColor,
      required this.borderColor,
      this.curve = Curves.linear,
      required this.height,
      required this.width})
      : assert(height > 9 && width > 19),
        super(key: key);

  final TabController tabController;
  final Duration duration;
  final Color backgroundColor;
  final Color borderColor;
  final Curve curve;
  final double height;
  final double width;

  @override
  State<AnimatedPageSelector> createState() => _AnimatedPageSelectorState();
}

class _AnimatedPageSelectorState extends State<AnimatedPageSelector> {
  int page = 0;
  int length = 0;
  List<double> sizes = [];

  @override
  void initState() {
    for (int i = 0; i < widget.tabController.length; i++) {
      sizes.add((widget.width + 10) * i);
    }
    length = sizes.length;
    widget.tabController.addListener(() {
      setState(() {
        page = widget.tabController.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(length, (index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: widget.backgroundColor,
                      border: Border.all(color: widget.borderColor, width: 2)),
                  height: widget.height,
                  width: widget.width,
                ),
                SizedBox(
                  width: index == length - 1 ? 0 : 10,
                ),
              ],
            );
          }),
        ),
        AnimatedPositioned(
          left: (width / 2) -
              (((widget.width * length) + (10 * (length - 1))) / 2) +
              (sizes[page]),
          duration: widget.duration,
          curve: widget.curve,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: widget.borderColor,
                border: Border.all(color: widget.borderColor, width: 2)),
            height: widget.height,
            width: widget.width,
          ),
        ),
      ],
    );
  }
}
