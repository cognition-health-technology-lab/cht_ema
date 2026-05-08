import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loading Page Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
      ),
      home: const LoadingScreen(title: 'Loading Screen Demo'),
    );
  }
}

class LoadingWaveDots extends StatefulWidget {
  final double size;
  final Color color;

  const LoadingWaveDots({
    super.key,
    this.size = 24.0,
    this.color = Colors.blue,
  });

  @override
  State<LoadingWaveDots> createState() => _LoadingWaveDotsState();
}

class _LoadingWaveDotsState extends State<LoadingWaveDots>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildDot(double delay, double opacity) {
    final double dotSize = widget.size / 3;

    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        final value = (sin((_controller.value * 2 * pi) + delay) + 1) / 2;
        return Opacity(
          opacity: lerpDouble(0.3, 1.0, value)! * opacity,
          child: Container(
            width: dotSize,
            height: dotSize,
            decoration: BoxDecoration(
              color: widget.color,
              shape: BoxShape.circle,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double spacing = widget.size / 6;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildDot(0, 1.0),
        SizedBox(width: spacing),
        _buildDot(0.6, 0.8),
        SizedBox(width: spacing),
        _buildDot(1.2, 0.6),
      ],
    );
  }
}

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key, required this.title});

  final String title;

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
      ),
      body: const Center(
        child: LoadingWaveDots(
          size: 100.0,
          color: Colors.tealAccent,
        ),
      ),
    );
  }
}

