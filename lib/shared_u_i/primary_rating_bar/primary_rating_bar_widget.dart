import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'primary_rating_bar_model.dart';
export 'primary_rating_bar_model.dart';

class PrimaryRatingBarWidget extends StatefulWidget {
  const PrimaryRatingBarWidget({
    super.key,
    required this.rating,
  });

  final int? rating;

  @override
  State<PrimaryRatingBarWidget> createState() => _PrimaryRatingBarWidgetState();
}

class _PrimaryRatingBarWidgetState extends State<PrimaryRatingBarWidget> {
  late PrimaryRatingBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimaryRatingBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemBuilder: (context, index) => Icon(
        Icons.star_rate,
        color: FlutterFlowTheme.of(context).warning,
      ),
      direction: Axis.horizontal,
      rating: widget.rating!.toDouble(),
      unratedColor: FlutterFlowTheme.of(context).secondaryText,
      itemCount: 5,
      itemSize: 16.0,
    );
  }
}
