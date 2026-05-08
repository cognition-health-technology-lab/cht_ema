import 'dart:math' as math;

import 'package:example_surveys/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';

class HomeDashboard extends StatefulWidget {
  final void Function(Locale?) onLocaleChange;

  const HomeDashboard({required this.onLocaleChange, super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  static const int _homeIndex = 0;
  static const int _instructionsIndex = 1;
  static const int _tasksIndex = 2;
  static const int _aboutIndex = 3;

  int selectedIndex = _homeIndex;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final items = <_DashboardDestination>[
      _DashboardDestination(
        label: localizations.dashboardTabHome,
        icon: _DashboardIcon.home,
      ),
      _DashboardDestination(
        label: localizations.dashboardTabInstructions,
        icon: _DashboardIcon.instructions,
      ),
      _DashboardDestination(
        label: localizations.dashboardTabTasks,
        icon: _DashboardIcon.tasks,
      ),
      _DashboardDestination(
        label: localizations.dashboardTabAboutUs,
        icon: _DashboardIcon.aboutUs,
      ),
    ];

    return Scaffold(
      backgroundColor: _DashboardColors.surface,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final size = Size(constraints.maxWidth, constraints.maxHeight);
          final scale = _DashboardScale(size);

          return Column(
            children: <Widget>[
              _DashboardHeader(scale: scale, title: localizations.appTitle),
              Expanded(
                child: _DashboardMenu(
                  scale: scale,
                  localizations: localizations,
                  onDestinationSelected: _selectDestination,
                ),
              ),
              _DashboardNavigationBar(
                scale: scale,
                items: items,
                selectedIndex: selectedIndex,
                onDestinationSelected: _selectDestination,
              ),
            ],
          );
        },
      ),
    );
  }

  void _selectDestination(int index) {
    setState(() => selectedIndex = index);
  }
}

class _DashboardScale {
  static const Size designSize = Size(706, 1240);

  final Size availableSize;

  const _DashboardScale(this.availableSize);

  double get value {
    if (availableSize.width <= 0 || availableSize.height <= 0) {
      return 1;
    }

    return math.min(
      availableSize.width / designSize.width,
      availableSize.height / designSize.height,
    );
  }

  double width(double designPixels) =>
      availableSize.width * designPixels / designSize.width;

  double height(double designPixels) =>
      availableSize.height * designPixels / designSize.height;

  double scaled(double designPixels) => designPixels * value;
}

class _DashboardColors {
  static const Color teal = Color(0xFF004F4C);
  static const Color activeTeal = Color(0xFF00A8A5);
  static const Color buttonGray = Color(0xFFD9DADA);
  static const Color orange = Color(0xFFF7931E);
  static const Color surface = Colors.white;
}

class _DashboardHeader extends StatelessWidget {
  final _DashboardScale scale;
  final String title;

  const _DashboardHeader({required this.scale, required this.title});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: _DashboardColors.teal,
      child: SizedBox(
        width: double.infinity,
        height: scale.height(169),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: scale.width(24)),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                maxLines: 1,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: scale.scaled(54),
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0,
                  height: 1,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _DashboardMenu extends StatelessWidget {
  final _DashboardScale scale;
  final AppLocalizations localizations;
  final ValueChanged<int> onDestinationSelected;

  const _DashboardMenu({
    required this.scale,
    required this.localizations,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: _DashboardColors.surface,
      child: Column(
        children: <Widget>[
          SizedBox(height: scale.height(83)),
          _DashboardButton(
            scale: scale,
            label: localizations.dashboardTabTasks,
            onTap: () => onDestinationSelected(_HomeDashboardState._tasksIndex),
          ),
          SizedBox(height: scale.height(39)),
          _DashboardButton(
            scale: scale,
            label: localizations.dashboardTabInstructions,
            onTap: () =>
                onDestinationSelected(_HomeDashboardState._instructionsIndex),
          ),
          SizedBox(height: scale.height(39)),
          _DashboardButton(
            scale: scale,
            label: localizations.dashboardTabAboutUs,
            onTap: () => onDestinationSelected(_HomeDashboardState._aboutIndex),
          ),
          SizedBox(height: scale.height(79)),
          SizedBox(
            width: scale.width(152),
            height: scale.height(154),
            child: const CustomPaint(painter: _HeadGearsPainter()),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class _DashboardButton extends StatelessWidget {
  final _DashboardScale scale;
  final String label;
  final VoidCallback onTap;

  const _DashboardButton({
    required this.scale,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: scale.width(563),
      height: scale.height(145),
      child: Material(
        color: _DashboardColors.buttonGray,
        borderRadius: BorderRadius.circular(scale.scaled(31)),
        child: InkWell(
          borderRadius: BorderRadius.circular(scale.scaled(31)),
          onTap: onTap,
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: scale.width(18)),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  label,
                  maxLines: 1,
                  style: TextStyle(
                    color: _DashboardColors.teal,
                    fontFamily: 'Georgia',
                    fontSize: scale.scaled(52),
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0,
                    height: 1,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum _DashboardIcon { tasks, instructions, aboutUs, home }

class _DashboardDestination {
  final String label;
  final _DashboardIcon icon;

  const _DashboardDestination({required this.label, required this.icon});
}

class _DashboardNavigationBar extends StatelessWidget {
  final _DashboardScale scale;
  final List<_DashboardDestination> items;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  const _DashboardNavigationBar({
    required this.scale,
    required this.items,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: _DashboardColors.teal,
      child: SizedBox(
        height: scale.height(121),
        child: Row(
          children: <Widget>[
            for (int index = 0; index < items.length; index += 1)
              Expanded(
                child: _DashboardNavigationItem(
                  scale: scale,
                  index: index,
                  destination: items[index],
                  isSelected: selectedIndex == index,
                  onTap: () => onDestinationSelected(index),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _DashboardNavigationItem extends StatelessWidget {
  final _DashboardScale scale;
  final int index;
  final _DashboardDestination destination;
  final bool isSelected;
  final VoidCallback onTap;

  const _DashboardNavigationItem({
    required this.scale,
    required this.index,
    required this.destination,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? _DashboardColors.activeTeal : Colors.white;

    return Semantics(
      key: ValueKey<String>(
        isSelected ? 'dashboard-nav-$index-selected' : 'dashboard-nav-$index',
      ),
      label: destination.label,
      selected: isSelected,
      button: true,
      excludeSemantics: true,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.only(
            top: scale.height(17),
            left: scale.width(6),
            right: scale.width(6),
            bottom: scale.height(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: scale.scaled(58),
                height: scale.scaled(58),
                child: CustomPaint(
                  painter: _NavigationIconPainter(
                    icon: destination.icon,
                    color: color,
                  ),
                ),
              ),
              SizedBox(height: scale.height(5)),
              SizedBox(
                height: scale.height(28),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    destination.label,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: color,
                      fontSize: scale.scaled(18),
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavigationIconPainter extends CustomPainter {
  final _DashboardIcon icon;
  final Color color;

  const _NavigationIconPainter({required this.icon, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    switch (icon) {
      case _DashboardIcon.tasks:
        _paintTasks(canvas, size);
      case _DashboardIcon.instructions:
        _paintInstructions(canvas, size);
      case _DashboardIcon.aboutUs:
        _paintAboutUs(canvas, size);
      case _DashboardIcon.home:
        _paintHome(canvas, size);
    }
  }

  @override
  bool shouldRepaint(_NavigationIconPainter oldDelegate) {
    return oldDelegate.icon != icon || oldDelegate.color != color;
  }

  Paint get _strokePaint {
    return Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.2
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
  }

  Paint get _fillPaint {
    return Paint()
      ..color = color
      ..style = PaintingStyle.fill;
  }

  void _paintTasks(Canvas canvas, Size size) {
    final stroke = _strokePaint;
    final w = size.width;
    final h = size.height;
    final board = RRect.fromRectAndRadius(
      Rect.fromLTWH(w * 0.29, h * 0.14, w * 0.43, h * 0.68),
      Radius.circular(w * 0.08),
    );

    canvas.drawRRect(board, stroke);
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(w * 0.40, h * 0.10, w * 0.20, h * 0.08),
        Radius.circular(w * 0.04),
      ),
      stroke,
    );

    for (final y in <double>[0.30, 0.45, 0.60]) {
      canvas.drawCircle(Offset(w * 0.40, h * y), w * 0.045, stroke);
      canvas.drawLine(Offset(w * 0.48, h * y), Offset(w * 0.62, h * y), stroke);
    }

    canvas.drawArc(
      Rect.fromLTWH(w * 0.09, h * 0.17, w * 0.28, h * 0.52),
      math.pi * 0.70,
      math.pi * 0.90,
      false,
      stroke,
    );
    canvas.drawArc(
      Rect.fromLTWH(w * 0.63, h * 0.17, w * 0.28, h * 0.52),
      -math.pi * 0.30,
      math.pi * 0.90,
      false,
      stroke,
    );
    _drawArrowHead(canvas, Offset(w * 0.17, h * 0.24), math.pi * 0.95, stroke);
    _drawArrowHead(canvas, Offset(w * 0.83, h * 0.66), -math.pi * 0.05, stroke);
  }

  void _paintInstructions(Canvas canvas, Size size) {
    final stroke = _strokePaint..strokeWidth = 2.4;
    final w = size.width;
    final h = size.height;

    canvas.drawCircle(Offset(w * 0.50, h * 0.50), w * 0.41, stroke);
    canvas.drawCircle(Offset(w * 0.51, h * 0.28), w * 0.07, stroke);
    canvas.drawLine(
      Offset(w * 0.46, h * 0.43),
      Offset(w * 0.56, h * 0.40),
      stroke,
    );
    canvas.drawLine(
      Offset(w * 0.56, h * 0.40),
      Offset(w * 0.48, h * 0.69),
      stroke,
    );
    canvas.drawLine(
      Offset(w * 0.45, h * 0.69),
      Offset(w * 0.61, h * 0.69),
      stroke,
    );
  }

  void _paintAboutUs(Canvas canvas, Size size) {
    final stroke = _strokePaint;
    final fill = _fillPaint;
    final w = size.width;
    final h = size.height;

    canvas.drawArc(
      Rect.fromLTWH(w * 0.10, h * 0.18, w * 0.78, h * 0.67),
      math.pi * 0.05,
      math.pi * 1.42,
      false,
      stroke,
    );
    canvas.drawArc(
      Rect.fromLTWH(w * 0.10, h * 0.18, w * 0.78, h * 0.67),
      math.pi * 1.55,
      math.pi * 0.40,
      false,
      stroke,
    );
    _drawArrowHead(canvas, Offset(w * 0.82, h * 0.23), -math.pi * 0.18, stroke);
    _drawArrowHead(canvas, Offset(w * 0.18, h * 0.79), math.pi * 0.84, stroke);

    canvas.drawCircle(Offset(w * 0.50, h * 0.45), w * 0.13, stroke);
    canvas.drawCircle(Offset(w * 0.62, h * 0.16), w * 0.04, fill);
    canvas.drawLine(
      Offset(w * 0.28, h * 0.70),
      Offset(w * 0.75, h * 0.70),
      stroke,
    );

    final bars = <Rect>[
      Rect.fromLTWH(w * 0.28, h * 0.57, w * 0.07, h * 0.13),
      Rect.fromLTWH(w * 0.42, h * 0.51, w * 0.07, h * 0.19),
      Rect.fromLTWH(w * 0.56, h * 0.58, w * 0.07, h * 0.12),
      Rect.fromLTWH(w * 0.70, h * 0.43, w * 0.07, h * 0.27),
    ];

    for (final rect in bars) {
      canvas.drawRect(rect, fill);
    }
  }

  void _paintHome(Canvas canvas, Size size) {
    final stroke = _strokePaint;
    _HeadGearsPainter(color: color, strokeWidth: 2).paint(canvas, size);

    final w = size.width;
    final h = size.height;
    canvas.drawCircle(Offset(w * 0.50, h * 0.50), w * 0.48, stroke);
  }

  void _drawArrowHead(Canvas canvas, Offset tip, double angle, Paint paint) {
    const length = 7.0;
    const wing = math.pi / 6;
    canvas.drawLine(
      tip,
      Offset(
        tip.dx - length * math.cos(angle - wing),
        tip.dy - length * math.sin(angle - wing),
      ),
      paint,
    );
    canvas.drawLine(
      tip,
      Offset(
        tip.dx - length * math.cos(angle + wing),
        tip.dy - length * math.sin(angle + wing),
      ),
      paint,
    );
  }
}

class _HeadGearsPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;

  const _HeadGearsPainter({
    this.color = _DashboardColors.orange,
    this.strokeWidth = 4.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final stroke = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final w = size.width;
    final h = size.height;
    final head = Path()
      ..moveTo(w * 0.78, h * 0.77)
      ..lineTo(w * 0.78, h * 0.96)
      ..lineTo(w * 0.35, h * 0.96)
      ..quadraticBezierTo(w * 0.30, h * 0.96, w * 0.30, h * 0.91)
      ..lineTo(w * 0.30, h * 0.79)
      ..lineTo(w * 0.15, h * 0.79)
      ..quadraticBezierTo(w * 0.08, h * 0.79, w * 0.08, h * 0.72)
      ..lineTo(w * 0.08, h * 0.58)
      ..quadraticBezierTo(w * 0.08, h * 0.53, w * 0.03, h * 0.53)
      ..quadraticBezierTo(w * -0.02, h * 0.52, w * 0.02, h * 0.46)
      ..lineTo(w * 0.11, h * 0.28)
      ..cubicTo(w * 0.15, h * 0.09, w * 0.33, h * 0.00, w * 0.55, h * 0.02)
      ..cubicTo(w * 0.82, h * 0.05, w * 0.98, h * 0.26, w * 0.96, h * 0.48)
      ..cubicTo(w * 0.95, h * 0.62, w * 0.88, h * 0.72, w * 0.78, h * 0.77);

    canvas.drawPath(head, stroke);
    _drawGear(canvas, Offset(w * 0.45, h * 0.33), w * 0.20, w * 0.12, stroke);
    _drawGear(canvas, Offset(w * 0.58, h * 0.65), w * 0.12, w * 0.07, stroke);
  }

  @override
  bool shouldRepaint(_HeadGearsPainter oldDelegate) {
    return oldDelegate.color != color || oldDelegate.strokeWidth != strokeWidth;
  }

  void _drawGear(
    Canvas canvas,
    Offset center,
    double outerRadius,
    double innerRadius,
    Paint paint,
  ) {
    const teeth = 10;
    final path = Path();

    for (var i = 0; i < teeth * 2; i += 1) {
      final angle = -math.pi / 2 + i * math.pi / teeth;
      final radius = i.isEven ? outerRadius : outerRadius * 0.84;
      final point = Offset(
        center.dx + math.cos(angle) * radius,
        center.dy + math.sin(angle) * radius,
      );
      if (i == 0) {
        path.moveTo(point.dx, point.dy);
      } else {
        path.lineTo(point.dx, point.dy);
      }
    }

    path.close();
    canvas.drawPath(path, paint);
    canvas.drawCircle(center, innerRadius, paint);
  }
}
