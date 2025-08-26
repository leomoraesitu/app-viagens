import '/flutter_flow/flutter_flow_util.dart';
import 'primary_text_field_widget.dart' show PrimaryTextFieldWidget;
import 'package:flutter/material.dart';

class PrimaryTextFieldModel extends FlutterFlowModel<PrimaryTextFieldWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textFieldTextController;
  String? Function(BuildContext, String?)? textFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textFieldTextController?.dispose();
  }
}
