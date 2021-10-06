import 'package:flutter/material.dart';

class TargetUserPainter extends CustomPainter {
  TargetUserPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Color.fromRGBO(31, 142, 241, 1);
    final textSpan = TextSpan(
      text: "Target 2000 Users",
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.rtl,
    );
    textPainter.layout();

    final textLessSpan = TextSpan(
      text: "Less 1000 Users",
    );
    final textLessPainter = TextPainter(
      text: textLessSpan,
      textDirection: TextDirection.rtl,
    );
    textLessPainter.layout();

    canvas.drawCircle(Offset(20, 15), 5, paint);
    canvas.drawCircle(Offset(20, 35), 5, paint);

    Offset drawPosition = Offset(40, 15 - (textPainter.height / 2));
    Offset drawPositionLess = Offset(40, 35 - (textPainter.height / 2));

    textPainter.paint(canvas, drawPosition);
    textLessPainter.paint(canvas, drawPositionLess);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
