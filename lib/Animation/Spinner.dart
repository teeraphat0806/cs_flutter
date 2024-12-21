import 'package:flutter/material.dart';
import 'dart:math';

class BatteryProgressIndicator extends StatefulWidget {
  final double percentage; // ค่าความคืบหน้าเป็นเปอร์เซ็นต์ (0 - 100)
  final IconData icons;
  final String sector;
  final String content;
  final Duration duration; // ระยะเวลาที่ใช้หมุน
  final ValueChanged<double> onProgressUpdate; 
  const BatteryProgressIndicator({
    Key? key,
    required this.percentage,
    required this.icons,
    required this.sector,
    required this.content,
    required this.duration,
    required this.onProgressUpdate, // รับพารามิเตอร์เวลา
  }) : super(key: key);

  @override
  _BatteryProgressIndicatorState createState() => _BatteryProgressIndicatorState();
}

class _BatteryProgressIndicatorState extends State<BatteryProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // สร้าง AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    // กำหนด Tween และ Animation
    _animation = Tween<double>(begin: 0, end: widget.percentage / 100).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _animation.addListener(() {
      widget.onProgressUpdate(_animation.value * 100); // ส่งค่าเป็นเปอร์เซ็นต์
    });
    // เริ่ม Animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return SizedBox(
          height: 120,
          width: 120,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // วงกลมพื้นหลัง
              CustomPaint(
                size: const Size(120, 120),
                painter: CirclePainter(
                  progress: 1.0,
                  color: Colors.grey[300]!, // สีพื้นหลัง
                ),
              ),
              // วงกลมแสดงเปอร์เซ็นต์
              CustomPaint(
                size: const Size(120, 120),
                painter: CirclePainter(
                  progress: _animation.value, // ใช้ค่า Animation
                  color: Colors.green, // สีวงกลมที่แสดงความคืบหน้า
                ),
              ),
              // ไอคอนแบตเตอรี่
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    widget.icons,
                    size: 50,
                    color: Colors.purple,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "${widget.content}",
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${(_animation.value * 100).toInt()} ${widget.sector}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class CirclePainter extends CustomPainter {
  final double progress; // ความคืบหน้า 0 - 1
  final Color color;

  CirclePainter({required this.progress, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint backgroundPaint = Paint()
      ..color = color
      ..strokeWidth = 15
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final double radius = min(size.width / 2, size.height / 2);
    final Offset center = Offset(size.width / 2, size.height / 2);

    // วาดวงกลมเป็น progress
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi * 1.3, // จุดเริ่มต้นที่ด้านบน
      progress * 2 * pi, // ความคืบหน้า
      false,
      backgroundPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
