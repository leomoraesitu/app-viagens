import '/flutter_flow/flutter_flow_util.dart';
import '/shared_u_i/primary_image/primary_image_widget.dart';
import '/shared_u_i/primary_rating_bar/primary_rating_bar_widget.dart';
import '/index.dart';
import 'lista_viagens_page_widget.dart' show ListaViagensPageWidget;
import 'package:flutter/material.dart';

class ListaViagensPageModel extends FlutterFlowModel<ListaViagensPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for PrimaryRatingBar dynamic component.
  late FlutterFlowDynamicModels<PrimaryRatingBarModel> primaryRatingBarModels1;
  // Models for PrimaryImage dynamic component.
  late FlutterFlowDynamicModels<PrimaryImageModel> primaryImageModels;
  // Models for PrimaryRatingBar dynamic component.
  late FlutterFlowDynamicModels<PrimaryRatingBarModel> primaryRatingBarModels2;

  @override
  void initState(BuildContext context) {
    primaryRatingBarModels1 =
        FlutterFlowDynamicModels(() => PrimaryRatingBarModel());
    primaryImageModels = FlutterFlowDynamicModels(() => PrimaryImageModel());
    primaryRatingBarModels2 =
        FlutterFlowDynamicModels(() => PrimaryRatingBarModel());
  }

  @override
  void dispose() {
    primaryRatingBarModels1.dispose();
    primaryImageModels.dispose();
    primaryRatingBarModels2.dispose();
  }
}
