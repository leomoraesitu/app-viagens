import '/flutter_flow/flutter_flow_util.dart';
import '/shared_u_i/primary_rating_bar/primary_rating_bar_widget.dart';
import '/index.dart';
import 'lista_viagens_page_widget.dart' show ListaViagensPageWidget;
import 'package:flutter/material.dart';

class ListaViagensPageModel extends FlutterFlowModel<ListaViagensPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController;
  // Models for PrimaryRatingBar dynamic component.
  late FlutterFlowDynamicModels<PrimaryRatingBarModel> primaryRatingBarModels1;
  // State field(s) for ListViewVertical widget.
  ScrollController? listViewVerticalScrollController;
  // Models for PrimaryRatingBar dynamic component.
  late FlutterFlowDynamicModels<PrimaryRatingBarModel> primaryRatingBarModels2;
  // Models for PrimaryRatingBar dynamic component.
  late FlutterFlowDynamicModels<PrimaryRatingBarModel> primaryRatingBarModels3;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    primaryRatingBarModels1 =
        FlutterFlowDynamicModels(() => PrimaryRatingBarModel());
    listViewVerticalScrollController = ScrollController();
    primaryRatingBarModels2 =
        FlutterFlowDynamicModels(() => PrimaryRatingBarModel());
    primaryRatingBarModels3 =
        FlutterFlowDynamicModels(() => PrimaryRatingBarModel());
  }

  @override
  void dispose() {
    columnController?.dispose();
    primaryRatingBarModels1.dispose();
    listViewVerticalScrollController?.dispose();
    primaryRatingBarModels2.dispose();
    primaryRatingBarModels3.dispose();
  }
}
