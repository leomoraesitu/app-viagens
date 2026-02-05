import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/shared_u_i/primary_button/primary_button_widget.dart';
import '/shared_u_i/primary_text_field/primary_text_field_widget.dart';
import '/index.dart';
import 'nova_viagem_wizard_page_widget.dart' show NovaViagemWizardPageWidget;
import 'package:flutter/material.dart';

class NovaViagemWizardPageModel
    extends FlutterFlowModel<NovaViagemWizardPageWidget> {
  ///  Local state fields for this page.

  dynamic placesResponseState;

  String? placeSelectedID;

  String? placeSelectedName;

  LatLng? selectedLatLong;

  double? selectedLat;

  double? selectedLng;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for scrolling_Column widget.
  ScrollController? scrollingColumnScrollController;
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
  // State field(s) for LocTextField widget.
  FocusNode? locTextFieldFocusNode;
  TextEditingController? locTextFieldTextController;
  String? Function(BuildContext, String?)? locTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (PlacesAutocompleteProxy)] action in LocTextField widget.
  ApiCallResponse? placesResponse;
  // Stores action output result for [Backend Call - API (PlacesAutocompleteProxyProd)] action in LocTextField widget.
  ApiCallResponse? placesProdResponse;
  // Model for PrimaryButtonPDF.
  late PrimaryButtonModel primaryButtonPDFModel;
  bool isDataUploading_uploadData10a = false;
  FFUploadedFile uploadedLocalFile_uploadData10a =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData10a = '';

  // Model for PrimaryButton component.
  late PrimaryButtonModel primaryButtonModel;
  // Stores action output result for [Backend Call - API (PlacesDetailsProxy)] action in PrimaryButton widget.
  ApiCallResponse? placesDetailsResponse;
  // Stores action output result for [Backend Call - API (PlacesDetailsProxyProd)] action in PrimaryButton widget.
  ApiCallResponse? placesDetailsProdResponse;
  // Stores action output result for [Backend Call - Create Document] action in PrimaryButton widget.
  ViagensRecord? firebaseResponse;

  @override
  void initState(BuildContext context) {
    scrollingColumnScrollController = ScrollController();
    primaryTextFieldLocalModel =
        createModel(context, () => PrimaryTextFieldModel());
    primaryTextFieldDescricaoModel =
        createModel(context, () => PrimaryTextFieldModel());
    primaryTextFieldImgUrlModel =
        createModel(context, () => PrimaryTextFieldModel());
    primaryTextFieldVontadeModel =
        createModel(context, () => PrimaryTextFieldModel());
    primaryButtonPDFModel = createModel(context, () => PrimaryButtonModel());
    primaryButtonModel = createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    scrollingColumnScrollController?.dispose();
    primaryTextFieldLocalModel.dispose();
    primaryTextFieldDescricaoModel.dispose();
    primaryTextFieldImgUrlModel.dispose();
    primaryTextFieldVontadeModel.dispose();
    locTextFieldFocusNode?.dispose();
    locTextFieldTextController?.dispose();

    primaryButtonPDFModel.dispose();
    primaryButtonModel.dispose();
  }
}
