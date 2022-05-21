import 'package:flutter/widgets.dart';

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius})
      : _painter = CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([final VoidCallback? onChanged]) => _painter;
}

class CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(
      // ignore: avoid_renaming_method_parameters
      Canvas canvas,
      Offset offset,
      // ignore: avoid_renaming_method_parameters
      ImageConfiguration imageConfiguration) {
    final Offset circleOffset = offset +
        Offset(imageConfiguration.size!.width / 2,
            imageConfiguration.size!.height - radius - 3);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
