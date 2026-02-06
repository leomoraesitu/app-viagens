import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/shared_u_i/primary_button/primary_button_widget.dart';
import '/shared_u_i/primary_text_field/primary_text_field_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'nova_viagem_wizard_page_model.dart';
export 'nova_viagem_wizard_page_model.dart';

class NovaViagemWizardPageWidget extends StatefulWidget {
  const NovaViagemWizardPageWidget({super.key});

  static String routeName = 'NovaViagemWizardPage';
  static String routePath = '/novaViagemWizardPage';

  @override
  State<NovaViagemWizardPageWidget> createState() =>
      _NovaViagemWizardPageWidgetState();
}

class _NovaViagemWizardPageWidgetState
    extends State<NovaViagemWizardPageWidget> {
  late NovaViagemWizardPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovaViagemWizardPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'NovaViagemWizardPage'});
    _model.locTextFieldTextController ??= TextEditingController();
    _model.locTextFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryBackground,
              size: 30.0,
            ),
            onPressed: () async {
              logFirebaseEvent('NOVA_VIAGEM_WIZARD_arrow_back_rounded_IC');
              logFirebaseEvent('IconButton_navigate_to');

              context.pushNamed(ListaViagensPageWidget.routeName);
            },
          ),
          title: Text(
            'Criar Viagem',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  fontSize: 26.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                    scrollbars: false,
                    dragDevices: {
                      PointerDeviceKind.mouse,
                      PointerDeviceKind.touch,
                      PointerDeviceKind.stylus,
                      PointerDeviceKind.unknown,
                    },
                  ),
                  child: Scrollbar(
                    controller: _model.scrollingColumnScrollController,
                    child: SingleChildScrollView(
                      controller: _model.scrollingColumnScrollController,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: 770.0,
                              ),
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: wrapWithModel(
                                        model:
                                            _model.primaryTextFieldLocalModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PrimaryTextFieldWidget(
                                          label: 'Local',
                                        ),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model:
                                          _model.primaryTextFieldDescricaoModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PrimaryTextFieldWidget(
                                        label: 'Fale um pouco sobre o local...',
                                        minLines: 5,
                                        maxLines: 9,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.primaryTextFieldImgUrlModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PrimaryTextFieldWidget(
                                        label: 'Cole a URL da foto aqui',
                                        maxLines: 1,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model:
                                          _model.primaryTextFieldVontadeModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PrimaryTextFieldWidget(
                                        label:
                                            'De 1 a 5, qual é a sua vontade?',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Investimento',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                          Container(
                                            width: 200.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: FlutterFlowCountController(
                                              decrementIconBuilder: (enabled) =>
                                                  Icon(
                                                Icons.remove_rounded,
                                                color: enabled
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                size: 24.0,
                                              ),
                                              incrementIconBuilder: (enabled) =>
                                                  Icon(
                                                Icons.add_rounded,
                                                color: enabled
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primary
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                size: 24.0,
                                              ),
                                              countBuilder: (count) => Text(
                                                count.toString(),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                              count: _model
                                                      .countControllerInvestimentoValue ??=
                                                  100,
                                              updateCount: (count) =>
                                                  safeSetState(() => _model
                                                          .countControllerInvestimentoValue =
                                                      count),
                                              stepSize: 100,
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 16.0)),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            TextFormField(
                                              controller: _model
                                                  .locTextFieldTextController,
                                              focusNode:
                                                  _model.locTextFieldFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.locTextFieldTextController',
                                                Duration(milliseconds: 2000),
                                                () async {
                                                  logFirebaseEvent(
                                                      'NOVA_VIAGEM_WIZARD_LocTextField_ON_TEXTF');
                                                  logFirebaseEvent(
                                                      'LocTextField_update_page_state');
                                                  _model.placesResponseState =
                                                      null;
                                                  safeSetState(() {});
                                                  if (_model.locTextFieldTextController
                                                              .text !=
                                                          '') {
                                                    if (FFDevEnvironmentValues()
                                                            .buildEnv ==
                                                        'dev') {
                                                      logFirebaseEvent(
                                                          'LocTextField_backend_call');
                                                      _model.placesResponse =
                                                          await PlacesAutocompleteProxyCall
                                                              .call(
                                                        input: _model
                                                            .locTextFieldTextController
                                                            .text,
                                                      );

                                                      if ((_model.placesResponse
                                                              ?.succeeded ??
                                                          true)) {
                                                        logFirebaseEvent(
                                                            'LocTextField_update_page_state');
                                                        _model.placesResponseState =
                                                            (_model.placesResponse
                                                                    ?.jsonBody ??
                                                                '');
                                                        safeSetState(() {});
                                                      } else {
                                                        logFirebaseEvent(
                                                            'LocTextField_alert_dialog');
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title:
                                                                  Text('Erro!'),
                                                              content: Text(
                                                                  'Erro desconhecido ao buscar localização'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                      }
                                                    } else {
                                                      logFirebaseEvent(
                                                          'LocTextField_backend_call');
                                                      _model.placesProdResponse =
                                                          await PlacesAutocompleteProxyProdCall
                                                              .call(
                                                        input: _model
                                                            .locTextFieldTextController
                                                            .text,
                                                      );

                                                      if ((_model
                                                              .placesProdResponse
                                                              ?.succeeded ??
                                                          true)) {
                                                        logFirebaseEvent(
                                                            'LocTextField_update_page_state');
                                                        _model.placesResponseState =
                                                            (_model.placesProdResponse
                                                                    ?.jsonBody ??
                                                                '');
                                                        safeSetState(() {});
                                                      } else {
                                                        logFirebaseEvent(
                                                            'LocTextField_alert_dialog');
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title:
                                                                  Text('Erro!'),
                                                              content: Text(
                                                                  'Erro desconhecido ao buscar localização'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                      }
                                                    }
                                                  }

                                                  safeSetState(() {});
                                                },
                                              ),
                                              autofocus: false,
                                              enabled: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                labelText: _model
                                                                .placeSelectedName ==
                                                            null ||
                                                        _model.placeSelectedName ==
                                                            ''
                                                    ? 'Selecionar Localização'
                                                    : _model.placeSelectedName,
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                alignLabelWithHint: true,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                prefixIcon: Icon(
                                                  Icons.place,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                suffixIcon: _model
                                                        .locTextFieldTextController!
                                                        .text
                                                        .isNotEmpty
                                                    ? InkWell(
                                                        onTap: () async {
                                                          _model
                                                              .locTextFieldTextController
                                                              ?.clear();
                                                          logFirebaseEvent(
                                                              'NOVA_VIAGEM_WIZARD_LocTextField_ON_TEXTF');
                                                          logFirebaseEvent(
                                                              'LocTextField_update_page_state');
                                                          _model.placesResponseState =
                                                              null;
                                                          safeSetState(() {});
                                                          if (_model.locTextFieldTextController
                                                                      .text !=
                                                                  '') {
                                                            if (FFDevEnvironmentValues()
                                                                    .buildEnv ==
                                                                'dev') {
                                                              logFirebaseEvent(
                                                                  'LocTextField_backend_call');
                                                              _model.placesResponse =
                                                                  await PlacesAutocompleteProxyCall
                                                                      .call(
                                                                input: _model
                                                                    .locTextFieldTextController
                                                                    .text,
                                                              );

                                                              if ((_model
                                                                      .placesResponse
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                logFirebaseEvent(
                                                                    'LocTextField_update_page_state');
                                                                _model
                                                                    .placesResponseState = (_model
                                                                        .placesResponse
                                                                        ?.jsonBody ??
                                                                    '');
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'LocTextField_alert_dialog');
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return AlertDialog(
                                                                      title: Text(
                                                                          'Erro!'),
                                                                      content: Text(
                                                                          'Erro desconhecido ao buscar localização'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                );
                                                              }
                                                            } else {
                                                              logFirebaseEvent(
                                                                  'LocTextField_backend_call');
                                                              _model.placesProdResponse =
                                                                  await PlacesAutocompleteProxyProdCall
                                                                      .call(
                                                                input: _model
                                                                    .locTextFieldTextController
                                                                    .text,
                                                              );

                                                              if ((_model
                                                                      .placesProdResponse
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                logFirebaseEvent(
                                                                    'LocTextField_update_page_state');
                                                                _model
                                                                    .placesResponseState = (_model
                                                                        .placesProdResponse
                                                                        ?.jsonBody ??
                                                                    '');
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'LocTextField_alert_dialog');
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return AlertDialog(
                                                                      title: Text(
                                                                          'Erro!'),
                                                                      content: Text(
                                                                          'Erro desconhecido ao buscar localização'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                );
                                                              }
                                                            }
                                                          }

                                                          safeSetState(() {});
                                                          safeSetState(() {});
                                                        },
                                                        child: Icon(
                                                          Icons.clear,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          size: 22,
                                                        ),
                                                      )
                                                    : null,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                              textAlign: TextAlign.start,
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              enableInteractiveSelection: true,
                                              validator: _model
                                                  .locTextFieldTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                            if ((_model.placesResponseState !=
                                                    null) &&
                                                (_model.placesResponseState !=
                                                    null))
                                              Builder(
                                                builder: (context) {
                                                  final locations =
                                                      getJsonField(
                                                    _model.placesResponseState,
                                                    r'''$.items''',
                                                  ).toList();

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: locations.length,
                                                    itemBuilder: (context,
                                                        locationsIndex) {
                                                      final locationsItem =
                                                          locations[
                                                              locationsIndex];
                                                      return Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'NOVA_VIAGEM_WIZARD_BUTTON_BTN_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Button_update_page_state');
                                                            _model.placeSelectedID =
                                                                getJsonField(
                                                              locationsItem,
                                                              r'''$.place_id''',
                                                            ).toString();
                                                            safeSetState(() {});
                                                            logFirebaseEvent(
                                                                'Button_update_page_state');
                                                            _model.placeSelectedName =
                                                                getJsonField(
                                                              locationsItem,
                                                              r'''$.description''',
                                                            ).toString();
                                                            safeSetState(() {});
                                                            logFirebaseEvent(
                                                                'Button_clear_text_fields_pin_codes');
                                                            safeSetState(() {
                                                              _model
                                                                  .locTextFieldTextController
                                                                  ?.clear();
                                                            });
                                                            logFirebaseEvent(
                                                                'Button_update_page_state');
                                                            _model.placesResponseState =
                                                                null;
                                                            safeSetState(() {});
                                                          },
                                                          text: getJsonField(
                                                            locationsItem,
                                                            r'''$.description''',
                                                          ).toString(),
                                                          options:
                                                              FFButtonOptions(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: Color(
                                                                0x004B39EF),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                            hoverColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.primaryButtonPDFModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PrimaryButtonWidget(
                                          label: 'Adicionar PDF',
                                          variant: ButtonVariant.secondary,
                                          callback: () async {
                                            logFirebaseEvent(
                                                'NOVA_VIAGEM_WIZARD_PrimaryButtonPDF_CALL');
                                            logFirebaseEvent(
                                                'PrimaryButtonPDF_upload_file_to_firebase');
                                            final selectedFiles =
                                                await selectFiles(
                                              allowedExtensions: ['pdf'],
                                              multiFile: false,
                                            );
                                            if (selectedFiles != null) {
                                              safeSetState(() => _model
                                                      .isDataUploading_uploadData10a =
                                                  true);
                                              var selectedUploadedFiles =
                                                  <FFUploadedFile>[];

                                              var downloadUrls = <String>[];
                                              try {
                                                showUploadMessage(
                                                  context,
                                                  'Uploading file...',
                                                  showLoading: true,
                                                );
                                                selectedUploadedFiles =
                                                    selectedFiles
                                                        .map((m) =>
                                                            FFUploadedFile(
                                                              name: m
                                                                  .storagePath
                                                                  .split('/')
                                                                  .last,
                                                              bytes: m.bytes,
                                                              originalFilename:
                                                                  m.originalFilename,
                                                            ))
                                                        .toList();

                                                downloadUrls =
                                                    (await Future.wait(
                                                  selectedFiles.map(
                                                    (f) async =>
                                                        await uploadData(
                                                            f.storagePath,
                                                            f.bytes),
                                                  ),
                                                ))
                                                        .where((u) => u != null)
                                                        .map((u) => u!)
                                                        .toList();
                                              } finally {
                                                ScaffoldMessenger.of(context)
                                                    .hideCurrentSnackBar();
                                                _model.isDataUploading_uploadData10a =
                                                    false;
                                              }
                                              if (selectedUploadedFiles
                                                          .length ==
                                                      selectedFiles.length &&
                                                  downloadUrls.length ==
                                                      selectedFiles.length) {
                                                safeSetState(() {
                                                  _model.uploadedLocalFile_uploadData10a =
                                                      selectedUploadedFiles
                                                          .first;
                                                  _model.uploadedFileUrl_uploadData10a =
                                                      downloadUrls.first;
                                                });
                                                showUploadMessage(
                                                  context,
                                                  'Success!',
                                                );
                                              } else {
                                                safeSetState(() {});
                                                showUploadMessage(
                                                  context,
                                                  'Failed to upload file',
                                                );
                                                return;
                                              }
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                    if (_model.uploadedFileUrl_uploadData10a !=
                                            '')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: FlutterFlowPdfViewer(
                                          networkPath: _model
                                              .uploadedFileUrl_uploadData10a,
                                          height: 300.0,
                                          horizontalScroll: false,
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 24.0),
                                      child: wrapWithModel(
                                        model: _model.primaryButtonModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PrimaryButtonWidget(
                                          label: 'Criar viagem',
                                          variant: ButtonVariant.primary,
                                          callback: () async {
                                            logFirebaseEvent(
                                                'NOVA_VIAGEM_WIZARD_Container_iev23ob5_CA');
                                            var _shouldSetState = false;
                                            if (_model.placeSelectedName !=
                                                    null &&
                                                _model.placeSelectedName !=
                                                    '') {
                                              if (FFDevEnvironmentValues()
                                                      .buildEnv ==
                                                  'dev') {
                                                logFirebaseEvent(
                                                    'PrimaryButton_backend_call');
                                                _model.placesDetailsResponse =
                                                    await PlacesDetailsProxyCall
                                                        .call(
                                                  placeId:
                                                      _model.placeSelectedID,
                                                );

                                                _shouldSetState = true;
                                                if ((_model
                                                        .placesDetailsResponse
                                                        ?.succeeded ??
                                                    true)) {
                                                  logFirebaseEvent(
                                                      'PrimaryButton_update_page_state');
                                                  _model.selectedLat =
                                                      getJsonField(
                                                    (_model.placesDetailsResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.location.latitude''',
                                                  );
                                                  _model.selectedLng =
                                                      getJsonField(
                                                    (_model.placesDetailsResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.location.longitude''',
                                                  );
                                                  safeSetState(() {});
                                                  logFirebaseEvent(
                                                      'PrimaryButton_update_page_state');
                                                  _model.selectedLatLong =
                                                      functions.makeLatLng(
                                                          _model.selectedLat,
                                                          _model.selectedLng);
                                                  safeSetState(() {});
                                                } else {
                                                  logFirebaseEvent(
                                                      'PrimaryButton_alert_dialog');
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text('ERRO'),
                                                        content: Text(
                                                            'Erro desconhecido ao buscar localização'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                }
                                              } else {
                                                logFirebaseEvent(
                                                    'PrimaryButton_backend_call');
                                                _model.placesDetailsProdResponse =
                                                    await PlacesDetailsProxyProdCall
                                                        .call(
                                                  placeId:
                                                      _model.placeSelectedID,
                                                );

                                                _shouldSetState = true;
                                                if ((_model
                                                        .placesDetailsProdResponse
                                                        ?.succeeded ??
                                                    true)) {
                                                  logFirebaseEvent(
                                                      'PrimaryButton_update_page_state');
                                                  _model.selectedLat =
                                                      getJsonField(
                                                    (_model.placesDetailsProdResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.location.latitude''',
                                                  );
                                                  _model.selectedLng =
                                                      getJsonField(
                                                    (_model.placesDetailsProdResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.location.longitude''',
                                                  );
                                                  safeSetState(() {});
                                                  logFirebaseEvent(
                                                      'PrimaryButton_update_page_state');
                                                  _model.selectedLatLong =
                                                      functions.makeLatLng(
                                                          _model.selectedLat,
                                                          _model.selectedLng);
                                                  safeSetState(() {});
                                                } else {
                                                  logFirebaseEvent(
                                                      'PrimaryButton_alert_dialog');
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text('ERRO'),
                                                        content: Text(
                                                            'Erro desconhecido ao buscar localização'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                }
                                              }
                                            }
                                            logFirebaseEvent(
                                                'PrimaryButton_backend_call');

                                            var viagensRecordReference =
                                                ViagensRecord.collection.doc();
                                            await viagensRecordReference
                                                .set(createViagensRecordData(
                                              nome: _model
                                                  .primaryTextFieldLocalModel
                                                  .textFieldTextController
                                                  .text,
                                              descricao: _model
                                                  .primaryTextFieldDescricaoModel
                                                  .textFieldTextController
                                                  .text,
                                              imgUrl: _model
                                                  .primaryTextFieldImgUrlModel
                                                  .textFieldTextController
                                                  .text,
                                              vontade: int.tryParse(_model
                                                  .primaryTextFieldVontadeModel
                                                  .textFieldTextController
                                                  .text),
                                              investimento: _model
                                                  .countControllerInvestimentoValue,
                                              visitado: false,
                                              userRef: currentUserReference,
                                              pdfPath: _model
                                                  .uploadedFileUrl_uploadData10a,
                                              locLatLong:
                                                  _model.selectedLatLong,
                                            ));
                                            _model.firebaseResponse =
                                                ViagensRecord
                                                    .getDocumentFromData(
                                                        createViagensRecordData(
                                                          nome: _model
                                                              .primaryTextFieldLocalModel
                                                              .textFieldTextController
                                                              .text,
                                                          descricao: _model
                                                              .primaryTextFieldDescricaoModel
                                                              .textFieldTextController
                                                              .text,
                                                          imgUrl: _model
                                                              .primaryTextFieldImgUrlModel
                                                              .textFieldTextController
                                                              .text,
                                                          vontade: int.tryParse(_model
                                                              .primaryTextFieldVontadeModel
                                                              .textFieldTextController
                                                              .text),
                                                          investimento: _model
                                                              .countControllerInvestimentoValue,
                                                          visitado: false,
                                                          userRef:
                                                              currentUserReference,
                                                          pdfPath: _model
                                                              .uploadedFileUrl_uploadData10a,
                                                          locLatLong: _model
                                                              .selectedLatLong,
                                                        ),
                                                        viagensRecordReference);
                                            _shouldSetState = true;
                                            if (_model.firebaseResponse !=
                                                null) {
                                              logFirebaseEvent(
                                                  'PrimaryButton_alert_dialog');
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text('SUCESSO!'),
                                                    content: Text(
                                                        'Viagem adicionada!'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: Text(
                                                            'Voltar para Home'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                              logFirebaseEvent(
                                                  'PrimaryButton_navigate_to');

                                              context.pushNamed(
                                                  ListaViagensPageWidget
                                                      .routeName);
                                            } else {
                                              logFirebaseEvent(
                                                  'PrimaryButton_alert_dialog');
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text('ERRO'),
                                                    content: Text(
                                                        'Erro desconhecido ao criar viagem'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: Text('Ok'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            }

                                            if (_shouldSetState)
                                              safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ),
                                  ]
                                      .divide(SizedBox(height: 12.0))
                                      .addToEnd(SizedBox(height: 32.0)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
