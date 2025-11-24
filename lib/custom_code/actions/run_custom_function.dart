// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/function_registry.dart' as registry;

Future<dynamic> runCustomFunction(
  String functionName,
  dynamic? jsonArgs,
) async {
  try {
    // Chama o registry genérico
    final value = await registry.callFunctionByName(
      name: functionName,
      args: jsonArgs,
    );

    // SUCESSO
    return <String, dynamic>{
      'result': value,
      'error': '',
    };
  } catch (e, st) {
    final errorMessage = 'runCustomFunction("$functionName") ERRO: $e';
    debugPrint(errorMessage);
    debugPrint('$st');

    // ERRO
    return <String, dynamic>{
      'result': null,
      'error': errorMessage,
    };
  }
}
