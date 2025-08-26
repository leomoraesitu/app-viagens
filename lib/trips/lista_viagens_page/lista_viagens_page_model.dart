import '/flutter_flow/flutter_flow_util.dart';
import '/shared_u_i/primary_rating_bar/primary_rating_bar_widget.dart';
import 'lista_viagens_page_widget.dart' show ListaViagensPageWidget;
import 'package:flutter/material.dart';

class ListaViagensPageModel extends FlutterFlowModel<ListaViagensPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PrimaryRatingBar component.
  late PrimaryRatingBarModel primaryRatingBarModel1;
  // Model for PrimaryRatingBar component.
  late PrimaryRatingBarModel primaryRatingBarModel2;

  @override
  void initState(BuildContext context) {
    primaryRatingBarModel1 =
        createModel(context, () => PrimaryRatingBarModel());
    primaryRatingBarModel2 =
        createModel(context, () => PrimaryRatingBarModel());
  }

  @override
  void dispose() {
    primaryRatingBarModel1.dispose();
    primaryRatingBarModel2.dispose();
  }
}
