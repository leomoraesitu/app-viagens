import '/flutter_flow/flutter_flow_util.dart';
import '/shared_u_i/primary_button/primary_button_widget.dart';
import '/shared_u_i/primary_image/primary_image_widget.dart';
import '/shared_u_i/primary_rating_bar/primary_rating_bar_widget.dart';
import '/index.dart';
import 'detalhes_viagem_page_widget.dart' show DetalhesViagemPageWidget;
import 'package:flutter/material.dart';

class DetalhesViagemPageModel
    extends FlutterFlowModel<DetalhesViagemPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController;
  // Model for PrimaryImage component.
  late PrimaryImageModel primaryImageModel;
  // Model for PrimaryRatingBar component.
  late PrimaryRatingBarModel primaryRatingBarModel;
  // Model for PrimaryButton component.
  late PrimaryButtonModel primaryButtonModel;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    primaryImageModel = createModel(context, () => PrimaryImageModel());
    primaryRatingBarModel = createModel(context, () => PrimaryRatingBarModel());
    primaryButtonModel = createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    columnController?.dispose();
    primaryImageModel.dispose();
    primaryRatingBarModel.dispose();
    primaryButtonModel.dispose();
  }
}
