import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/shared_u_i/primary_button/primary_button_widget.dart';
import '/shared_u_i/primary_text_field/primary_text_field_widget.dart';
import '/index.dart';
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
              context.pop();
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
        body: SafeArea(
          top: true,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
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
                                      model: _model.primaryTextFieldLocalModel,
                                      updateCallback: () => safeSetState(() {}),
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
                                    model: _model.primaryTextFieldVontadeModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: PrimaryTextFieldWidget(
                                      label: 'De 1 a 5, qual é a sua vontade?',
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Container(
                                          width: 200.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
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
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondaryText
                                                  : FlutterFlowTheme.of(context)
                                                      .alternate,
                                              size: 24.0,
                                            ),
                                            incrementIconBuilder: (enabled) =>
                                                Icon(
                                              Icons.add_rounded,
                                              color: enabled
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : FlutterFlowTheme.of(context)
                                                      .alternate,
                                              size: 24.0,
                                            ),
                                            countBuilder: (count) => Text(
                                              count.toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                  child: wrapWithModel(
                    model: _model.primaryButtonModel,
                    updateCallback: () => safeSetState(() {}),
                    child: PrimaryButtonWidget(
                      label: 'Criar viagem',
                      variant: ButtonVariant.primary,
                      callback: () async {
                        var viagensRecordReference =
                            ViagensRecord.collection.doc();
                        await viagensRecordReference
                            .set(createViagensRecordData(
                          nome: _model.primaryTextFieldLocalModel
                              .textFieldTextController.text,
                          descricao: _model.primaryTextFieldDescricaoModel
                              .textFieldTextController.text,
                          imgUrl: _model.primaryTextFieldImgUrlModel
                              .textFieldTextController.text,
                          vontade: int.tryParse(_model
                              .primaryTextFieldVontadeModel
                              .textFieldTextController
                              .text),
                          investimento: _model.countControllerInvestimentoValue,
                        ));
                        _model.firebaseResponse =
                            ViagensRecord.getDocumentFromData(
                                createViagensRecordData(
                                  nome: _model.primaryTextFieldLocalModel
                                      .textFieldTextController.text,
                                  descricao: _model
                                      .primaryTextFieldDescricaoModel
                                      .textFieldTextController
                                      .text,
                                  imgUrl: _model.primaryTextFieldImgUrlModel
                                      .textFieldTextController.text,
                                  vontade: int.tryParse(_model
                                      .primaryTextFieldVontadeModel
                                      .textFieldTextController
                                      .text),
                                  investimento:
                                      _model.countControllerInvestimentoValue,
                                ),
                                viagensRecordReference);
                        if ((_model.firebaseResponse != null) == true) {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('SUCESSO!'),
                                content: Text('Viagem adicionada!'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Voltar para Home'),
                                  ),
                                ],
                              );
                            },
                          );

                          context.pushNamed(ListaViagensPageWidget.routeName);
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('ERRO'),
                                content:
                                    Text('Erro desconhecido ao criar viagem'),
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
                        }

                        safeSetState(() {});
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}