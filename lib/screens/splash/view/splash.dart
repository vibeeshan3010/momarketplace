import 'package:flutter/material.dart';
import '../../home/view/home.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
// Make sure to include the RadialExpansionPainter class definition above this class

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

    // Logo animations...
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    // Radial background animation:
    // Starts early in the timeline (at 0.25 = 500ms mark)
    // and finishes at the very end of the timeline (1.0 = 2000ms mark).
    _radialAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        // This longer interval ensures a smooth, gradual expansion
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
              MaterialPageRoute(builder: (_) => HomeScreen()),
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
      // We use a Stack to place the expanding red background behind the logo
      body: Stack(
        children: [
          // 1. The animating background layer (initially white, expands to fill with red)
          AnimatedBuilder(
            animation: _radialAnimation,
            builder: (context, child) {
              return CustomPaint(
                size: Size.infinite, // Fills the entire screen
                painter: RadialExpansionPainter(
                  animation: _radialAnimation,
                  color: Color(0xFFe72236), // The final color you want to expand to
                ),
              );
            },
          ),

          // 2. The centered logo animation layer
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
    // The animation value goes from 0.0 to 1.0. We use this to calculate the expanding radius.
    final double radius = size.width * math.max(size.width, size.height) / size.width * animation.value;
    final Paint paint = Paint()..color = color;

    // Draw a circle centered on the screen with an expanding radius
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), radius, paint);
  }

  @override
  bool shouldRepaint(covariant RadialExpansionPainter oldDelegate) => false;
}
