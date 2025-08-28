import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/shared_u_i/primary_button/primary_button_widget.dart';
import '/shared_u_i/primary_text_field/primary_text_field_widget.dart';
import '/index.dart';
import 'nova_viagem_wizard_page_widget.dart' show NovaViagemWizardPageWidget;
import 'package:flutter/material.dart';

class NovaViagemWizardPageModel
    extends FlutterFlowModel<NovaViagemWizardPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for PrimaryTextFieldLocal.
  late PrimaryTextFieldModel primaryTextFieldLocalModel;
  // Model for PrimaryTextFieldDescricao.
  late PrimaryTextFieldModel primaryTextFieldDescricaoModel;
  // Model for PrimaryTextFieldImgUrl.
  late PrimaryTextFieldModel primaryTextFieldImgUrlModel;
  // Model for PrimaryTextFieldVontade.
  late PrimaryTextFieldModel primaryTextFieldVontadeModel;
  // State field(s) for CountControllerInvestimento widget.
  int? countControllerInvestimentoValue;
  // Model for PrimaryButton component.
  late PrimaryButtonModel primaryButtonModel;
  // Stores action output result for [Backend Call - Create Document] action in PrimaryButton widget.
  ViagensRecord? firebaseResponse;

  @override
  void initState(BuildContext context) {
    primaryTextFieldLocalModel =
        createModel(context, () => PrimaryTextFieldModel());
    primaryTextFieldDescricaoModel =
        createModel(context, () => PrimaryTextFieldModel());
    primaryTextFieldImgUrlModel =
        createModel(context, () => PrimaryTextFieldModel());
    primaryTextFieldVontadeModel =
        createModel(context, () => PrimaryTextFieldModel());
    primaryButtonModel = createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    primaryTextFieldLocalModel.dispose();
    primaryTextFieldDescricaoModel.dispose();
    primaryTextFieldImgUrlModel.dispose();
    primaryTextFieldVontadeModel.dispose();
    primaryButtonModel.dispose();
  }
}
