// function_registry.dart
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as cf;

/// Tipo de função dinâmica: recebe args como Map e retorna Future<dynamic>.
typedef DynFn = FutureOr<dynamic> Function(Map<String, dynamic> args);

/// Registry global: mapeia nome -> função.
/// Aqui você registra TODAS as Custom Functions que quer expor
/// via runCustomFunction.
final Map<String, DynFn> functionRegistry = {
  // ------------------------------------------------------------
  // getJsonValue(String jsonString, String keyName)
  // ------------------------------------------------------------
  'getJsonValue': (args) async {
    final jsonString = args['jsonString'] as String?;
    final keyName = args['keyName'] as String?;

    if (jsonString == null || keyName == null) {
      throw ArgumentError(
        'getJsonValue requer "jsonString" e "keyName" em args.',
      );
    }

    return cf.getJsonValue(jsonString, keyName);
  },

  // Exemplo de como registrar outras CFs:
  /*
  'decodeJsonString': (args) async {
    final jsonString = args['jsonString'] as String?;
    if (jsonString == null) {
      throw ArgumentError(
        'decodeJsonString requer "jsonString" em args.',
      );
    }
    return cf.decodeJsonString(jsonString);
  },
  */
};

/// Helper que resolve e executa a função pelo nome.
///
/// - name: nome da função registrada no [functionRegistry]
/// - args: mapa de argumentos nomeados (pode ser vazio)
Future<dynamic> callFunctionByName({
  required String name,
  Map<String, dynamic>? args,
}) async {
  final fn = functionRegistry[name];
  if (fn == null) {
    throw ArgumentError(
      'Função "$name" não registrada no functionRegistry.',
    );
  }

  final safeArgs = args ?? <String, dynamic>{};
  return await fn(safeArgs);
}
