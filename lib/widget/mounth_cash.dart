import 'package:flutter/material.dart';

class MounthCashWidget extends StatelessWidget {
  const MounthCashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MounthCashPainter(),
      size: Size(MediaQuery.of(context).size.width, 400),
    );
  }
}

class MounthCashPainter extends CustomPainter {
  Paint _paintBackground = Paint()
    ..color = Color.fromRGBO(56, 59, 80, 1)
    ..isAntiAlias = true
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 3;
  Paint _paintAccent = Paint()
    ..color = Color.fromRGBO(31, 142, 241, 1)
    ..isAntiAlias = true
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 6;
  List<String> cash = [
    "\$2,029",
    "\$1,2",
    "\$1,1",
    "\$5,111",
    "\$2.1",
    "\$2,1"
  ];

  @override
  void paint(Canvas canvas, Size size) {
    double posY;
    for (int i = 0; i < cash.length; i++) {
      posY = 40 + (i) * 30;
      if (i < cash.length - 1)
        canvas.drawLine(
            Offset(10, posY), Offset(10, 40 + (i + 1) * 30), _paintBackground);

      canvas.drawCircle(Offset(10, posY), 5, _paintAccent);
      var _textMounth = TextSpan(
        text: "january 0"+(i+1).toString(),
        //style: textStyle,
        //style: new TextStyle(color: Colors.red),
      );
      final textPainter = TextPainter(
        text: _textMounth,
        textDirection: TextDirection.rtl,
      );
      textPainter.layout();
      textPainter.paint(canvas, Offset(40, posY - (textPainter.height / 2)));

      var _textCash = TextSpan(text: cash[i]);
      final textPainterCash = TextPainter(
        text: _textCash,
        textDirection: TextDirection.rtl,
      );
      textPainterCash.layout(
          // minWidth: 0,
          // maxWidth: size.width,

          );
      textPainterCash.paint(
          canvas,
          Offset(size.width - textPainterCash.width,
              posY - (textPainter.height / 2)));
      // textPainterCash.paint(canvas, Offset( 100,40+i*30));
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
