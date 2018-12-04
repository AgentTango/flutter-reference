import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';


class BarChartPainter extends CustomPainter {
  static const barWidth = 10.0;

  BarChartPainter(Animation<double> animation)
  : animation = animation,
  super(repaint: animation);

  final Animation<double> animation;

  @override
  void paint(Canvas canvas, Size size) {
    final barHeight = animation.value;
    final paint = Paint()
      ..color = Colors.blue[400]
      ..style = PaintingStyle.fill;
    canvas.drawRect(
      Rect.fromLTWH(
        (size.width - barWidth) / 2,
        size.height - barHeight,
        barWidth,
        barHeight,
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(BarChartPainter old) => barHeight != old.barHeight;
}
