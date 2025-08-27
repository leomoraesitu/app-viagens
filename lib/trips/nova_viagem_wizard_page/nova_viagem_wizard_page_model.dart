import '/flutter_flow/flutter_flow_util.dart';
import '/shared_u_i/primary_button/primary_button_widget.dart';
import '/shared_u_i/primary_text_field/primary_text_field_widget.dart';
import 'nova_viagem_wizard_page_widget.dart' show NovaViagemWizardPageWidget;
import 'package:flutter/material.dart';

class NovaViagemWizardPageModel
    extends FlutterFlowModel<NovaViagemWizardPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for PrimaryTextFieldNome.
  late PrimaryTextFieldModel primaryTextFieldNomeModel;
  // Model for PrimaryTextFieldDescricao.
  late PrimaryTextFieldModel primaryTextFieldDescricaoModel;
  // Model for PrimaryTextFieldImgUrl.
  late PrimaryTextFieldModel primaryTextFieldImgUrlModel;
  // Model for PrimaryTextFieldVontade.
  late PrimaryTextFieldModel primaryTextFieldVontadeModel;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Model for PrimaryButton component.
  late PrimaryButtonModel primaryButtonModel;

  @override
  void initState(BuildContext context) {
    primaryTextFieldNomeModel =
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
    primaryTextFieldNomeModel.dispose();
    primaryTextFieldDescricaoModel.dispose();
    primaryTextFieldImgUrlModel.dispose();
    primaryTextFieldVontadeModel.dispose();
    primaryButtonModel.dispose();
  }
}
