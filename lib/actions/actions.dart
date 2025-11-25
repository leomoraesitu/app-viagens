import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

/// Executa qualquer ação potencialmente falha (Custom Function, Query ou
/// lógica complexa), tratando o erro e aplicando fallback seguro
/// automaticamente.
///
/// Serve como um Try/Catch visual genérico, reutilizável em todo o app.
Future<dynamic> tryCatchFallback(
  BuildContext context, {
  /// Resultado da operação (sucesso ou erro).
  dynamic result,
  String? error,
  dynamic defaultValue,
  bool? showError,
  String? contextLabel,
}) async {
  if (error != null && error != '') {
    if (showError == true) {
      if (FFDevEnvironmentValues().buildEnv == 'dev') {
        logFirebaseEvent('tryCatchFallback_alert_dialog');
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Erro! - ${contextLabel}'),
              content: Text(error),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
      } else {
        logFirebaseEvent('tryCatchFallback_alert_dialog');
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Ops!'),
              content: Text('Ocorreu um erro desconhecido.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Tente novamente'),
                ),
              ],
            );
          },
        );
      }

      return defaultValue;
    } else {
      return defaultValue;
    }
  } else {
    return result;
  }
}
