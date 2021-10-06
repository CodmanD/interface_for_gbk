import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:interface_for_gbk/resources/res.dart';

class CirclePainter extends CustomPainter {
  CirclePainter(this._persent);

  final int _persent;

  @override
  void paint(Canvas canvas, Size size) {

    final rect = Rect.fromLTRB(0, 0, size.width, size.height);

    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = Color.fromRGBO(31, 142, 241, 1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.height / 10;

    final paintBack = Paint()
      ..strokeCap = StrokeCap.round
      ..color = Color.fromRGBO(69, 71, 92, 1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.height / 12;

    final startAngle = 3 * math.pi / 2;

    final sweepAngle = math.pi;

    String text = "$_persent%";
    if (size.height > 60) text = text + "\n" + Resources.user;
    final textSpan = TextSpan(
      text: text,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.rtl,
    );
    textPainter.layout();

    canvas.drawArc(rect, 0, 2 * math.pi, false, paintBack);
    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
    Offset drawPosition = Offset(rect.center.dx - (textPainter.width / 2),
        rect.center.dy - (textPainter.height / 2));

    textPainter.paint(canvas, drawPosition);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
