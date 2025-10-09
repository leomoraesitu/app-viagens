import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'primary_image_model.dart';
export 'primary_image_model.dart';

class PrimaryImageWidget extends StatefulWidget {
  const PrimaryImageWidget({
    super.key,
    required this.imageUrl,
    this.imageWidth,
    int? imageHeight,
  }) : this.imageHeight = imageHeight ?? 250;

  final String? imageUrl;
  final int? imageWidth;
  final int imageHeight;

  @override
  State<PrimaryImageWidget> createState() => _PrimaryImageWidgetState();
}

class _PrimaryImageWidgetState extends State<PrimaryImageWidget> {
  late PrimaryImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimaryImageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: CachedNetworkImage(
        fadeInDuration: Duration(milliseconds: 500),
        fadeOutDuration: Duration(milliseconds: 500),
        imageUrl: widget.imageUrl!,
        width: widget.imageWidth?.toDouble(),
        height: widget.imageHeight.toDouble(),
        fit: BoxFit.cover,
      ),
    );
  }
}
