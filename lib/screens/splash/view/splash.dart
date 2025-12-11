import 'package:flutter/material.dart';
import 'package:momarketplace/util/appcolors.dart';
import 'package:momarketplace/widgets/bottomnavigationbar.dart';
import '../../home/view/home.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;
  late Animation<double> _radialAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // Total animation duration (2 seconds)
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _radialAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.25, 1.0, curve: Curves.easeOutCirc),
      ),
    );

    _controller.forward();

    // Navigation logic remains the same
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(milliseconds: 300), () {
          if (mounted) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => CustomBottomNavigationBar()),
            );
          }
        });
      }
    });
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _radialAnimation,
            builder: (context, child) {
              return CustomPaint(
                size: Size.infinite, // Fills the entire screen
                painter: RadialExpansionPainter(
                  animation: _radialAnimation,
                  color: AppColors.red
                ),
              );
            },
          ),

          Center(
            child: FadeTransition(
              opacity: _opacityAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/mo.png",
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class RadialExpansionPainter extends CustomPainter {
  final Animation<double> animation;
  final Color color;

  RadialExpansionPainter({required this.animation, required this.color})
      : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width * math.max(size.width, size.height) / size.width * animation.value;
    final Paint paint = Paint()..color = color;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), radius, paint);
  }

  @override
  bool shouldRepaint(covariant RadialExpansionPainter oldDelegate) => false;
}
