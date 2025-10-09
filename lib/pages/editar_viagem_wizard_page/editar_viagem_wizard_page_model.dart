import '/flutter_flow/flutter_flow_util.dart';
import '/shared_u_i/primary_button/primary_button_widget.dart';
import '/shared_u_i/primary_image/primary_image_widget.dart';
import '/shared_u_i/primary_text_field/primary_text_field_widget.dart';
import '/index.dart';
import 'editar_viagem_wizard_page_widget.dart'
    show EditarViagemWizardPageWidget;
import 'package:flutter/material.dart';

class EditarViagemWizardPageModel
    extends FlutterFlowModel<EditarViagemWizardPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for scrolling_Column widget.
  ScrollController? scrollingColumnScrollController;
  // Model for PrimaryImage component.
  late PrimaryImageModel primaryImageModel;
  // Model for PrimaryTextFieldDescricao.
  late PrimaryTextFieldModel primaryTextFieldDescricaoModel;
  // Model for PrimaryTextFieldVontade.
  late PrimaryTextFieldModel primaryTextFieldVontadeModel;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Model for PrimaryButtonEditar.
  late PrimaryButtonModel primaryButtonEditarModel;
  // Model for PrimaryButtonDeletar.
  late PrimaryButtonModel primaryButtonDeletarModel;

  @override
  void initState(BuildContext context) {
    scrollingColumnScrollController = ScrollController();
    primaryImageModel = createModel(context, () => PrimaryImageModel());
    primaryTextFieldDescricaoModel =
        createModel(context, () => PrimaryTextFieldModel());
    primaryTextFieldVontadeModel =
        createModel(context, () => PrimaryTextFieldModel());
    primaryButtonEditarModel = createModel(context, () => PrimaryButtonModel());
    primaryButtonDeletarModel =
        createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    scrollingColumnScrollController?.dispose();
    primaryImageModel.dispose();
    primaryTextFieldDescricaoModel.dispose();
    primaryTextFieldVontadeModel.dispose();
    primaryButtonEditarModel.dispose();
    primaryButtonDeletarModel.dispose();
  }
}
