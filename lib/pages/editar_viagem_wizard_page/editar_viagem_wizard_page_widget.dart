import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/shared_u_i/primary_button/primary_button_widget.dart';
import '/shared_u_i/primary_image/primary_image_widget.dart';
import '/shared_u_i/primary_text_field/primary_text_field_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'editar_viagem_wizard_page_model.dart';
export 'editar_viagem_wizard_page_model.dart';

class EditarViagemWizardPageWidget extends StatefulWidget {
  const EditarViagemWizardPageWidget({
    super.key,
    required this.viagemRef,
  });

  final DocumentReference? viagemRef;

  static String routeName = 'EditarViagemWizardPage';
  static String routePath = '/editarViagemWizardPage';

  @override
  State<EditarViagemWizardPageWidget> createState() =>
      _EditarViagemWizardPageWidgetState();
}

class _EditarViagemWizardPageWidgetState
    extends State<EditarViagemWizardPageWidget> {
  late EditarViagemWizardPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditarViagemWizardPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'EditarViagemWizardPage'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ViagensRecord>(
      stream: ViagensRecord.getDocument(widget.viagemRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }

        final editarViagemWizardPageViagensRecord = snapshot.data!;

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
                  logFirebaseEvent('EDITAR_VIAGEM_WIZARD_arrow_back_rounded_');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              title: Text(
                'Editar Viagem',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.interTight(
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 26.0,
                      letterSpacing: 0.0,
                      fontWeight: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .fontWeight,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: wrapWithModel(
                                            model: _model.primaryImageModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: PrimaryImageWidget(
                                              imageUrl: valueOrDefault<String>(
                                                editarViagemWizardPageViagensRecord
                                                    .imgUrl,
                                                'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSu8kcUZLl4WFjIYk71LJlrzVHAhLFPWUS5MtSlR0rrWaSKfc202FahrpSoBd8nkTEJgorJXXEzztnW-Xtr1Bcm1JqnF2iqHdWQ2HN0Dg',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            editarViagemWizardPageViagensRecord
                                                .nome,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  font: GoogleFonts.interTight(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model
                                              .primaryTextFieldDescricaoModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: PrimaryTextFieldWidget(
                                            label:
                                                'Fale um pouco sobre o local...',
                                            minLines: 5,
                                            maxLines: 9,
                                            initialValue:
                                                editarViagemWizardPageViagensRecord
                                                    .descricao,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model
                                              .primaryTextFieldVontadeModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: PrimaryTextFieldWidget(
                                            label:
                                                'De 1 a 5, qual é a sua vontade?',
                                            initialValue:
                                                editarViagemWizardPageViagensRecord
                                                    .vontade
                                                    .toString(),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Investimento',
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
                                              Container(
                                                width: 200.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child:
                                                    FlutterFlowCountController(
                                                  decrementIconBuilder:
                                                      (enabled) => Icon(
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
                                                  incrementIconBuilder:
                                                      (enabled) => Icon(
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
                                                          font:
                                                              GoogleFonts.inter(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                                          .countControllerValue ??=
                                                      editarViagemWizardPageViagensRecord
                                                          .investimento,
                                                  updateCount: (count) =>
                                                      safeSetState(() => _model
                                                              .countControllerValue =
                                                          count),
                                                  stepSize: 100,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(12.0, 0.0,
                                                              12.0, 0.0),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 16.0)),
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
                  wrapWithModel(
                    model: _model.primaryButtonEditarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: PrimaryButtonWidget(
                      label: 'Atualizar viagem',
                      variant: ButtonVariant.primary,
                      callback: () async {
                        logFirebaseEvent(
                            'EDITAR_VIAGEM_WIZARD_PrimaryButtonEditar');
                        logFirebaseEvent('PrimaryButtonEditar_backend_call');

                        await widget.viagemRef!.update(createViagensRecordData(
                          descricao: _model.primaryTextFieldDescricaoModel
                              .textFieldTextController.text,
                          vontade: int.tryParse(_model
                              .primaryTextFieldVontadeModel
                              .textFieldTextController
                              .text),
                          investimento: _model.countControllerValue,
                        ));
                        logFirebaseEvent('PrimaryButtonEditar_alert_dialog');
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('SUCESSO!'),
                              content: Text('Viagem atualizada!'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                        logFirebaseEvent('PrimaryButtonEditar_navigate_to');

                        context.pushNamed(
                          DetalhesViagemPageWidget.routeName,
                          queryParameters: {
                            'viagemRef': serializeParam(
                              editarViagemWizardPageViagensRecord.reference,
                              ParamType.DocumentReference,
                            ),
                          }.withoutNulls,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 24.0),
                    child: wrapWithModel(
                      model: _model.primaryButtonDeletarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: PrimaryButtonWidget(
                        label: 'Deletar viagem',
                        variant: ButtonVariant.danger,
                        callback: () async {
                          logFirebaseEvent(
                              'EDITAR_VIAGEM_WIZARD_PrimaryButtonDeleta');
                          logFirebaseEvent('PrimaryButtonDeletar_alert_dialog');
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('ATENÇÃO!'),
                                    content:
                                        Text('Você realmente quer deletar?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancelar'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Sim, deletar'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            logFirebaseEvent(
                                'PrimaryButtonDeletar_backend_call');
                            await widget.viagemRef!.delete();
                            logFirebaseEvent(
                                'PrimaryButtonDeletar_alert_dialog');
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('SUCESSO!'),
                                  content: Text('A viagem foi deletada!'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                            logFirebaseEvent(
                                'PrimaryButtonDeletar_navigate_to');

                            context.pushNamed(ListaViagensPageWidget.routeName);
                          } else {
                            return;
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
