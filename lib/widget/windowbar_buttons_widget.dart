import 'package:bitsdojo_window/bitsdojo_window.dart';
import '../theme/_export_theme.dart';
import 'package:flutter/material.dart';

//! Contrução da barra da janela
class WindowBarButtons extends StatelessWidget {
  final Color color;

  const WindowBarButtons({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: WindowTitleBarBox(
        child: Row(
          children: [
            Expanded(child: MoveWindow()),
            const WindowButtons(),
          ],
        ),
      ),
    );
  }
}

//! BOTÕES DA JANELA
// -Config Colors
final buttonColors = WindowButtonColors(
  mouseOver: windowBarButtonsColor.withOpacity(0.75),
  mouseDown: Colors.black54,
  iconNormal: windowBarButtonsColor,
  iconMouseOver: Colors.white,
  iconMouseDown: windowBarButtonsColor,
);

final closeButtonColors = WindowButtonColors(
  mouseOver: const Color(0xFFFF0000),
  mouseDown: Colors.black54,
  iconNormal: windowBarButtonsColor,
  iconMouseOver: Colors.white,
);

// -Contrução dos botões
class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}
