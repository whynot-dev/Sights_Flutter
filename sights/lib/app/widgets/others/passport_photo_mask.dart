import 'package:flutter/material.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:vector_math/vector_math.dart' as vm;

class PassportPhotoMask extends StatelessWidget {
  const PassportPhotoMask({
    this.arrangement = Arrangement.vertical,
  });

  final Arrangement arrangement;

  @override
  Widget build(BuildContext context) => arrangement == Arrangement.vertical
      ? _buildBackCameraMask()
      : _buildSelfieMask();

  Widget _buildBackCameraMask() => Stack(
        children: [
          AspectRatio(
            aspectRatio: 3 / 3.9,
            child: SizedBox(
              width: double.infinity,
              child: Container(
                margin: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: AppColors.grey40,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          AspectRatio(aspectRatio: 3 / 3.9, child: _buildAngles()),
        ],
      );

  Widget _buildSelfieMask() => Row(
        children: [
          Flexible(
            flex: 4,
            child: AspectRatio(
              aspectRatio: 3 / 4,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.grey40,
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(190, 210))),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            flex: 6,
            child: Stack(
              children: [
                Container(
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: SizedBox(
                      // width: double.infinity,
                      child: Container(
                        margin: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: AppColors.grey40,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ),
                AspectRatio(aspectRatio: 4 / 3, child: _buildAngles()),
              ],
            ),
          ),
        ],
      );

  Widget _buildAngles() => CustomPaint(
        size: Size(double.infinity, double.infinity),
        painter: _CustomAngles(),
      );
}

class _CustomAngles extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint stroke = Paint()
      ..color = AppColors.accent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final Path angle1 = Path()
      ..addArc(Rect.fromLTWH(0, 0, 36, 36), vm.radians(-180), vm.radians(90))
      ..lineTo(24, 0)
      ..moveTo(0, 18)
      ..lineTo(0, 21);

    final Path angle2 = Path()
      ..addArc(Rect.fromLTWH(size.width - 36, 0, 36, 36), vm.radians(0),
          vm.radians(-90))
      ..lineTo(size.width - 24, 0)
      ..moveTo(size.width, 18)
      ..lineTo(size.width, 21);

    final Path angle3 = Path()
      ..addArc(Rect.fromLTWH(size.width - 36, size.height - 36, 36, 36),
          vm.radians(0), vm.radians(90))
      ..lineTo(size.width - 24, size.height)
      ..moveTo(size.width, size.height - 18)
      ..lineTo(size.width, size.height - 21);

    final Path angle4 = Path()
      ..addArc(Rect.fromLTWH(0, size.height - 36, 36, 36), vm.radians(-180),
          vm.radians(-90))
      ..lineTo(24, size.height)
      ..moveTo(0, size.height - 18)
      ..lineTo(0, size.height - 21);

    canvas.drawPath(angle1, stroke);
    canvas.drawPath(angle2, stroke);
    canvas.drawPath(angle3, stroke);
    canvas.drawPath(angle4, stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

enum Arrangement { vertical, horizontal }
