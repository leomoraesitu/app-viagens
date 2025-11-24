// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/flutter_flow/nav/nav.dart'; // appNavigatorKey + GoRouter
import '/index.dart'; // DevMenuPageWidget.routeName

class CornerBanner extends StatefulWidget {
  const CornerBanner({
    super.key,
    this.width,
    this.height,
    required this.bannerPosition,
    required this.bannerColor,
    this.bannerLabel,
    this.bannerTextColor,
    this.bannerFontSize,
    this.bannerFontWeight,
  });

  final double? width;
  final double? height;

  final CornerBannerPosition bannerPosition;
  final Color bannerColor;

  /// Texto opcional no banner
  final String? bannerLabel;

  /// Estilo do texto (valores primitivos)
  final Color? bannerTextColor;
  final double? bannerFontSize;
  final int? bannerFontWeight;

  @override
  State<CornerBanner> createState() => _CornerBannerState();
}

class _CornerBannerState extends State<CornerBanner> {
  /// Como o app é LTR, mapeamos direto para `topStart/topEnd`.
  BannerLocation _toBannerLocation(CornerBannerPosition pos) {
    switch (pos) {
      case CornerBannerPosition.topLeft:
        return BannerLocation.topStart;
      case CornerBannerPosition.topRight:
        return BannerLocation.topEnd;
      case CornerBannerPosition.bottomLeft:
        return BannerLocation.bottomStart;
      case CornerBannerPosition.bottomRight:
        return BannerLocation.bottomEnd;
    }
  }

  FontWeight _toFontWeight(int? w) {
    switch (w) {
      case 100:
        return FontWeight.w100;
      case 200:
        return FontWeight.w200;
      case 300:
        return FontWeight.w300;
      case 400:
        return FontWeight.w400;
      case 500:
        return FontWeight.w500;
      case 600:
        return FontWeight.w600;
      case 700:
        return FontWeight.w700;
      case 800:
        return FontWeight.w800;
      case 900:
        return FontWeight.w900;
      default:
        return FontWeight.w600;
    }
  }

  TextStyle _resolveTextStyle(BuildContext context) {
    final color = widget.bannerTextColor ?? Colors.white;
    final size = widget.bannerFontSize ?? 10.0;
    final fw = _toFontWeight(widget.bannerFontWeight);
    return TextStyle(color: color, fontSize: size, fontWeight: fw);
  }

  @override
  Widget build(BuildContext context) {
    final bannerLocation = _toBannerLocation(widget.bannerPosition);
    final label = widget.bannerLabel ?? '';

    return SizedBox(
      width: widget.width ?? 120,
      height: widget.height ?? 120,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Banner visual padrão
          Banner(
            message: label,
            location: bannerLocation,
            color: widget.bannerColor,
            textStyle: _resolveTextStyle(context),
          ),

          // Camada de hit-test APENAS na faixa diagonal
          ClipPath(
            clipper: _CornerBannerHitClipper(widget.bannerPosition),
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                final ctx = appNavigatorKey.currentContext;
                if (ctx != null) {
                  ctx.goNamed(DevMenuPageWidget.routeName);
                } else {
                  debugPrint('appNavigatorKey.currentContext == null');
                }
              },
              // Container transparente só pra ter área de hit-test
              child: Container(color: Colors.transparent),
            ),
          ),
        ],
      ),
    );
  }
}

/// Clipper responsável por limitar o hit-test à faixa diagonal do Banner.
/// OBS: esta classe é TOP-LEVEL, fora de `_CornerBannerState`.
class _CornerBannerHitClipper extends CustomClipper<Path> {
  final CornerBannerPosition position;

  _CornerBannerHitClipper(this.position);

  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;
    const factor = 0.55; // controla "largura" da área clicável na faixa

    final path = Path();

    switch (position) {
      case CornerBannerPosition.topRight:
        // Triângulo no canto superior direito
        path
          ..moveTo(w, 0)
          ..lineTo(w, h * factor)
          ..lineTo(w - w * factor, 0)
          ..close();
        break;

      case CornerBannerPosition.topLeft:
        // Triângulo no canto superior esquerdo
        path
          ..moveTo(0, 0)
          ..lineTo(w * factor, 0)
          ..lineTo(0, h * factor)
          ..close();
        break;

      case CornerBannerPosition.bottomRight:
        // Triângulo no canto inferior direito
        path
          ..moveTo(w, h)
          ..lineTo(w, h - h * factor)
          ..lineTo(w - w * factor, h)
          ..close();
        break;

      case CornerBannerPosition.bottomLeft:
        // Triângulo no canto inferior esquerdo
        path
          ..moveTo(0, h)
          ..lineTo(w * factor, h)
          ..lineTo(0, h - h * factor)
          ..close();
        break;
    }

    return path;
  }

  @override
  bool shouldReclip(covariant _CornerBannerHitClipper oldClipper) {
    return oldClipper.position != position;
  }
}
