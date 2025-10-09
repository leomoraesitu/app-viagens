import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'primary_text_field_model.dart';
export 'primary_text_field_model.dart';

class PrimaryTextFieldWidget extends StatefulWidget {
  const PrimaryTextFieldWidget({
    super.key,
    this.label,
    this.minLines,
    this.maxLines,
    this.initialValue,
  });

  final String? label;
  final int? minLines;
  final int? maxLines;
  final String? initialValue;

  @override
  State<PrimaryTextFieldWidget> createState() => _PrimaryTextFieldWidgetState();
}

class _PrimaryTextFieldWidgetState extends State<PrimaryTextFieldWidget> {
  late PrimaryTextFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimaryTextFieldModel());

    _model.textFieldTextController ??=
        TextEditingController(text: widget.initialValue);
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _model.textFieldTextController,
      focusNode: _model.textFieldFocusNode,
      autofocus: true,
      textCapitalization: TextCapitalization.none,
      obscureText: false,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
              font: GoogleFonts.inter(
                fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
              ),
              color: FlutterFlowTheme.of(context).secondaryText,
              letterSpacing: 0.0,
              fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
            ),
        alignLabelWithHint: true,
        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
              font: GoogleFonts.inter(
                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
              ),
              letterSpacing: 0.0,
              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
            ),
        errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              font: GoogleFonts.inter(
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
              color: FlutterFlowTheme.of(context).error,
              fontSize: 12.0,
              letterSpacing: 0.0,
              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
            ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).alternate,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).primary,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        filled: true,
        fillColor: (_model.textFieldFocusNode?.hasFocus ?? false)
            ? FlutterFlowTheme.of(context).accent1
            : FlutterFlowTheme.of(context).secondaryBackground,
        contentPadding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
      ),
      style: FlutterFlowTheme.of(context).labelLarge.override(
            font: GoogleFonts.inter(
              fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
            ),
            letterSpacing: 0.0,
            fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
            fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
          ),
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      cursorColor: FlutterFlowTheme.of(context).primary,
      validator: _model.textFieldTextControllerValidator.asValidator(context),
      inputFormatters: [
        if (!isAndroid && !isiOS)
          TextInputFormatter.withFunction((oldValue, newValue) {
            return TextEditingValue(
              selection: newValue.selection,
              text: newValue.text.toCapitalization(TextCapitalization.none),
            );
          }),
      ],
    );
  }
}
