import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shared_u_i/primary_button/primary_button_widget.dart';
import '/index.dart';
import 'dev_menu_page_widget.dart' show DevMenuPageWidget;
import 'package:flutter/material.dart';

class DevMenuPageModel extends FlutterFlowModel<DevMenuPageWidget> {
  ///  Local state fields for this page.

  DocumentReference? seeds;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DevQuickPanelDropDown widget.
  String? devQuickPanelDropDownValue;
  FormFieldController<String>? devQuickPanelDropDownValueController;
  // Model for NovaViagemWizardPagePrimaryButton.
  late PrimaryButtonModel novaViagemWizardPagePrimaryButtonModel;
  // Model for DetalhesViagemPagePrimaryButton.
  late PrimaryButtonModel detalhesViagemPagePrimaryButtonModel;
  // Model for EditarViagemWizardPagePrimaryButton.
  late PrimaryButtonModel editarViagemWizardPagePrimaryButtonModel;
  // Model for ListaViagensPagePrimaryButton.
  late PrimaryButtonModel listaViagensPagePrimaryButtonModel;
  // Model for LoginPagePrimaryButton.
  late PrimaryButtonModel loginPagePrimaryButtonModel;
  // Model for PerfilPagePrimaryButton.
  late PrimaryButtonModel perfilPagePrimaryButtonModel;

  @override
  void initState(BuildContext context) {
    novaViagemWizardPagePrimaryButtonModel =
        createModel(context, () => PrimaryButtonModel());
    detalhesViagemPagePrimaryButtonModel =
        createModel(context, () => PrimaryButtonModel());
    editarViagemWizardPagePrimaryButtonModel =
        createModel(context, () => PrimaryButtonModel());
    listaViagensPagePrimaryButtonModel =
        createModel(context, () => PrimaryButtonModel());
    loginPagePrimaryButtonModel =
        createModel(context, () => PrimaryButtonModel());
    perfilPagePrimaryButtonModel =
        createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    novaViagemWizardPagePrimaryButtonModel.dispose();
    detalhesViagemPagePrimaryButtonModel.dispose();
    editarViagemWizardPagePrimaryButtonModel.dispose();
    listaViagensPagePrimaryButtonModel.dispose();
    loginPagePrimaryButtonModel.dispose();
    perfilPagePrimaryButtonModel.dispose();
  }
}
