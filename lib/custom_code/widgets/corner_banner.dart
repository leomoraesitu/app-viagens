// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:ui' as ui;

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
  BannerLocation _toBannerLocation(
    CornerBannerPosition pos,
    ui.TextDirection dir,
  ) {
    switch (pos) {
      case CornerBannerPosition.topLeft:
        return dir == ui.TextDirection.ltr
            ? BannerLocation.topStart
            : BannerLocation.topEnd;
      case CornerBannerPosition.topRight:
        return dir == ui.TextDirection.ltr
            ? BannerLocation.topEnd
            : BannerLocation.topStart;
      case CornerBannerPosition.bottomLeft:
        return dir == ui.TextDirection.ltr
            ? BannerLocation.bottomStart
            : BannerLocation.bottomEnd;
      case CornerBannerPosition.bottomRight:
        return dir == ui.TextDirection.ltr
            ? BannerLocation.bottomEnd
            : BannerLocation.bottomStart;
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
    final ui.TextDirection textDir = Directionality.of(context);
    final bannerLocation = _toBannerLocation(widget.bannerPosition, textDir);
    final label = widget.bannerLabel ?? '';

    return SizedBox(
      width: widget.width ?? 120,
      height: widget.height ?? 120,
      child: Banner(
        message: label,
        location: bannerLocation,
        color: widget.bannerColor,
        textStyle: _resolveTextStyle(context),
      ),
    );
  }
}
