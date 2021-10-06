import 'package:flutter/material.dart';

class YearsWidget extends StatelessWidget {
  const YearsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: YearsPainter(),
      size: Size(
        MediaQuery.of(context).size.width,
        80,
      ),
    );
  }
}

class YearsPainter extends CustomPainter {

  Paint _paintBackground = Paint()
    ..color = Color.fromRGBO(56, 59, 80, 1)
    ..isAntiAlias = true
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 3;
  Paint _paintAccent = Paint()
    ..color = Color.fromRGBO(31, 142, 241, 1)
    ..isAntiAlias = true
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 5;

  List<String> _years = [
    "2012",
    "2013",
    "2014",
    "2015",
    "2016",
    "2017",
    "2018",
  ];
  List<int> _values = [50, 30, 100, 50, 80, 50, 60];

  @override
  void paint(Canvas canvas, Size size) {

    _paintBackground.strokeWidth=size.height/25;
    _paintAccent.strokeWidth=size.height/22;
    double step = size.width / (_values.length + 1);

    for (int i = 0; i < _years.length; i++) {
      double nextX = step + i * step;
      canvas.drawLine(Offset(nextX, 0), Offset(nextX, size.height/2), _paintBackground);

      double nextY = size.height/2 - (size.height/2 * (_values[i] / 100));
      canvas.drawLine(Offset(nextX, size.height/2), Offset(nextX, nextY), _paintAccent);
      var _textSpan = TextSpan(
        text: _years[i],
      );
      final textPainter = TextPainter(
        text: _textSpan,
        textDirection: TextDirection.rtl,
      );
      textPainter.layout();
      textPainter.paint(canvas, Offset(nextX - (textPainter.width / 2), size.height/2+20));
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
