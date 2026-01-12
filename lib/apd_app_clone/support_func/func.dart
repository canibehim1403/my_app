
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height / 2); // bottom left
    path.lineTo(size.width, 0); // top center
    path.lineTo(size.width, size.height); // bottom right
    path.close();
    return path;
  }

  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
// class TriangleClipper_1 extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.moveTo(0, size.height);
//     path.lineTo(size.width / 2, 0);
//     path.lineTo(size.width, size.height);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
class GoldTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFD4AF37) // Metallic Gold color
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // 1. Top Peak Segment
    final topPath = Path()
      ..moveTo(size.width * 0.42, size.height * 0.15) // Left side of peak
      ..lineTo(size.width * 0.5, 0)                   // Top point
      ..lineTo(size.width * 0.58, size.height * 0.15); // Right side of peak

    // 2. Bottom Left Corner Segment
    final leftPath = Path()
      ..moveTo(size.width * 0.15, size.height * 0.75)
      ..lineTo(0, size.height)
      ..lineTo(size.width * 0.25, size.height);

    // 3. Bottom Right Corner Segment
    final rightPath = Path()
      ..moveTo(size.width * 0.75, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width * 0.85, size.height * 0.75);

    canvas.drawPath(topPath, paint);
    canvas.drawPath(leftPath, paint);
    canvas.drawPath(rightPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class NoLeadingZeroFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    if (newValue.text.startsWith("0")) {
      return oldValue;
    }
    return newValue;
  }
}



