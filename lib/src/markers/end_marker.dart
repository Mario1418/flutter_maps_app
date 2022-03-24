import 'package:flutter/material.dart';

class EndMarkerPainter extends CustomPainter {
  final int km;
  final String destination;

  EndMarkerPainter({required this.km, required this.destination});

  @override
  void paint(Canvas canvas, Size size) {
    final blackPaint = Paint()..color = Colors.black;

    final whitePaint = Paint()..color = Colors.white;

    const double circleBlackRadius = 20;
    const double circleWhiteRadius = 7;

    //Circulo Negro

    canvas.drawCircle(Offset(size.width * 0.5, size.height - circleBlackRadius),
        circleBlackRadius, blackPaint);

    canvas.drawCircle(Offset(size.width * 0.5, size.height - circleBlackRadius),
        circleWhiteRadius, whitePaint);

    //Caja Blanca
    final path = Path();
    path.moveTo(10, 20);
    path.lineTo(size.width - 10, 20);
    path.lineTo(size.width - 10, 100);
    path.lineTo(10, 100);

    //Sombra
    canvas.drawShadow(path, Colors.black, 10, false);

    canvas.drawPath(path, whitePaint);

    //Caja Negra
    const blackBox = Rect.fromLTWH(10, 20, 70, 80);
    canvas.drawRect(blackBox, blackPaint);

    //Textos
    final textSpan = TextSpan(
      style: const TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400),
      text: '$km',
    );

    final minutesPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center)
      ..layout(
        minWidth: 70,
        maxWidth: 70,
      );

    minutesPainter.paint(canvas, const Offset(10, 35));

    //PalabraMin

    const textMin = TextSpan(
      style: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
      text: 'Kms',
    );

    final minsPainter = TextPainter(
        text: textMin,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center)
      ..layout(
        minWidth: 70,
        maxWidth: 70,
      );

    minsPainter.paint(canvas, const Offset(10, 68));

    //Desc

    final locationText = TextSpan(
      style: const TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
      text: destination,
    );

    final locationPainter = TextPainter(
        maxLines: 2,
        ellipsis: '...',
        text: locationText,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.left)
      ..layout(
        minWidth: size.width - 95,
        maxWidth: size.width - 95,
      );

    final double offsetY = (destination.length > 25) ? 35 : 48;

    locationPainter.paint(canvas, Offset(90, offsetY));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;
}
