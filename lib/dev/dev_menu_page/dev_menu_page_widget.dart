import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shared_u_i/primary_button/primary_button_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dev_menu_page_model.dart';
export 'dev_menu_page_model.dart';

/// Tela exclusiva do Environment “Development” com botões de atalho para
/// navegar diretamente às páginas do App.
class DevMenuPageWidget extends StatefulWidget {
  const DevMenuPageWidget({super.key});

  static String routeName = 'DevMenuPage';
  static String routePath = '/devMenuPage';

  @override
  State<DevMenuPageWidget> createState() => _DevMenuPageWidgetState();
}

class _DevMenuPageWidgetState extends State<DevMenuPageWidget> {
  late DevMenuPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DevMenuPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'DevMenuPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('DEV_MENU_DevMenuPage_ON_INIT_STATE');
      logFirebaseEvent('DevMenuPage_google_analytics_event');
      logFirebaseEvent(
        'dev_menu_open',
        parameters: {
          'env': FFDevEnvironmentValues().buildEnv,
          'origin': getCurrentRoute(context),
        },
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ViagensRecord>>(
      stream: queryViagensRecord(),
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
        List<ViagensRecord> devMenuPageViagensRecordList = snapshot.data!;

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
              title: Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Text(
                  'Dev Menu',
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
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller:
                                _model.devQuickPanelDropDownValueController ??=
                                    FormFieldController<String>(
                              _model.devQuickPanelDropDownValue ??=
                                  devMenuPageViagensRecordList
                                      .firstOrNull?.reference.id,
                            ),
                            options: devMenuPageViagensRecordList
                                .map((e) => e.reference.id)
                                .toList(),
                            onChanged: (val) => safeSetState(
                                () => _model.devQuickPanelDropDownValue = val),
                            height: 40.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            hintText: 'Seed Select...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor:
                                FlutterFlowTheme.of(context).primaryText,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            hidesUnderline: true,
                            isOverButton: false,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.novaViagemWizardPagePrimaryButtonModel,
                          updateCallback: () => safeSetState(() {}),
                          child: PrimaryButtonWidget(
                            label: 'NovaViagemWizardPage',
                            variant: ButtonVariant.outline,
                            callback: () async {
                              logFirebaseEvent(
                                  'DEV_MENU_NovaViagemWizardPagePrimaryButt');
                              logFirebaseEvent(
                                  'NovaViagemWizardPagePrimaryButton_google');
                              logFirebaseEvent(
                                'dev_jump_to_nova_viagem_wizard_page',
                                parameters: {
                                  'env': FFDevEnvironmentValues().buildEnv,
                                  'jump_to': 'nova_viagem_wizard_page',
                                },
                              );
                              logFirebaseEvent(
                                  'NovaViagemWizardPagePrimaryButton_naviga');

                              context.pushNamed(
                                  NovaViagemWizardPageWidget.routeName);
                            },
                          ),
                        ),
                        wrapWithModel(
                          model: _model.detalhesViagemPagePrimaryButtonModel,
                          updateCallback: () => safeSetState(() {}),
                          child: PrimaryButtonWidget(
                            label: 'DetalhesViagemPage',
                            variant: ButtonVariant.outline,
                            callback: () async {
                              logFirebaseEvent(
                                  'DEV_MENU_DetalhesViagemPagePrimaryButton');
                              logFirebaseEvent(
                                  'DetalhesViagemPagePrimaryButton_google_a');
                              logFirebaseEvent(
                                'dev_jump_to_detalhes_viagem_page',
                                parameters: {
                                  'env': FFDevEnvironmentValues().buildEnv,
                                  'jump_to': 'detalhes_viagem_page',
                                },
                              );
                              logFirebaseEvent(
                                  'DetalhesViagemPagePrimaryButton_navigate');

                              context.pushNamed(
                                DetalhesViagemPageWidget.routeName,
                                queryParameters: {
                                  'viagemRef': serializeParam(
                                    devMenuPageViagensRecordList
                                        .where((e) =>
                                            e.reference.id ==
                                            _model.devQuickPanelDropDownValue)
                                        .toList()
                                        .firstOrNull
                                        ?.reference,
                                    ParamType.DocumentReference,
                                  ),
                                }.withoutNulls,
                              );
                            },
                          ),
                        ),
                        wrapWithModel(
                          model:
                              _model.editarViagemWizardPagePrimaryButtonModel,
                          updateCallback: () => safeSetState(() {}),
                          child: PrimaryButtonWidget(
                            label: 'EditarViagemWizardPage',
                            variant: ButtonVariant.outline,
                            callback: () async {
                              logFirebaseEvent(
                                  'DEV_MENU_EditarViagemWizardPagePrimaryBu');
                              logFirebaseEvent(
                                  'EditarViagemWizardPagePrimaryButton_goog');
                              logFirebaseEvent(
                                'dev_jump_to_editar_viagem_wizard_page',
                                parameters: {
                                  'env': FFDevEnvironmentValues().buildEnv,
                                  'jump_to': 'editar_viagem_wizard_page',
                                },
                              );
                              logFirebaseEvent(
                                  'EditarViagemWizardPagePrimaryButton_navi');

                              context.pushNamed(
                                EditarViagemWizardPageWidget.routeName,
                                queryParameters: {
                                  'viagemRef': serializeParam(
                                    devMenuPageViagensRecordList
                                        .where((e) =>
                                            e.reference.id ==
                                            _model.devQuickPanelDropDownValue)
                                        .toList()
                                        .firstOrNull
                                        ?.reference,
                                    ParamType.DocumentReference,
                                  ),
                                }.withoutNulls,
                              );
                            },
                          ),
                        ),
                        wrapWithModel(
                          model: _model.listaViagensPagePrimaryButtonModel,
                          updateCallback: () => safeSetState(() {}),
                          child: PrimaryButtonWidget(
                            label: 'ListaViagensPage',
                            variant: ButtonVariant.outline,
                            callback: () async {
                              logFirebaseEvent(
                                  'DEV_MENU_ListaViagensPagePrimaryButton_C');
                              logFirebaseEvent(
                                  'ListaViagensPagePrimaryButton_google_ana');
                              logFirebaseEvent(
                                'dev_jump_to_lista_viagens_page',
                                parameters: {
                                  'env': FFDevEnvironmentValues().buildEnv,
                                  'jump_to': 'lista_viagens_page',
                                },
                              );
                              logFirebaseEvent(
                                  'ListaViagensPagePrimaryButton_navigate_t');

                              context
                                  .pushNamed(ListaViagensPageWidget.routeName);
                            },
                          ),
                        ),
                        wrapWithModel(
                          model: _model.loginPagePrimaryButtonModel,
                          updateCallback: () => safeSetState(() {}),
                          child: PrimaryButtonWidget(
                            label: 'LoginPage',
                            variant: ButtonVariant.outline,
                            callback: () async {
                              logFirebaseEvent(
                                  'DEV_MENU_LoginPagePrimaryButton_CALLBACK');
                              logFirebaseEvent(
                                  'LoginPagePrimaryButton_google_analytics_');
                              logFirebaseEvent(
                                'dev_jump_to_lista_viagens_page',
                                parameters: {
                                  'env': FFDevEnvironmentValues().buildEnv,
                                  'jump_to': 'lista_viagens_page',
                                },
                              );
                              logFirebaseEvent(
                                  'LoginPagePrimaryButton_navigate_to');

                              context.pushNamed(LoginPageWidget.routeName);
                            },
                          ),
                        ),
                        wrapWithModel(
                          model: _model.perfilPagePrimaryButtonModel,
                          updateCallback: () => safeSetState(() {}),
                          child: PrimaryButtonWidget(
                            label: 'PerfilPage',
                            variant: ButtonVariant.outline,
                            callback: () async {
                              logFirebaseEvent(
                                  'DEV_MENU_PerfilPagePrimaryButton_CALLBAC');
                              logFirebaseEvent(
                                  'PerfilPagePrimaryButton_google_analytics');
                              logFirebaseEvent(
                                'dev_jump_to_lista_viagens_page',
                                parameters: {
                                  'env': FFDevEnvironmentValues().buildEnv,
                                  'jump_to': 'lista_viagens_page',
                                },
                              );
                              logFirebaseEvent(
                                  'PerfilPagePrimaryButton_navigate_to');

                              context.pushNamed(PerfilPageWidget.routeName);
                            },
                          ),
                        ),
                      ]
                          .divide(SizedBox(height: 24.0))
                          .around(SizedBox(height: 24.0)),
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
