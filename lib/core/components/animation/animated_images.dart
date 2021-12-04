import 'package:flutter/material.dart';

class AnimatedImage extends StatefulWidget {
  final String image;
  final Offset offsetEnd;
  final Offset offsetStart;
  final Curve curve;
  const AnimatedImage(this.image, this.curve,
      {Key? key, required this.offsetEnd, required this.offsetStart})
      : super(key: key);

  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 3))
        ..repeat(reverse: true);
  late final Animation<Offset> _animation =
      Tween(begin: widget.offsetStart, end: widget.offsetEnd)
          .animate(CurvedAnimation(parent: _controller, curve: widget.curve));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        child: Image.asset(widget.image), position: _animation);
  }
}
