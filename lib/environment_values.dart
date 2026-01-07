import 'dart:convert';
import 'package:flutter/services.dart';

class FFDevEnvironmentValues {
  // Caminho padrão do JSON de ambiente
  static const String environmentValuesPath =
      'assets/environment_values/environment.json';

  // Singleton
  static final FFDevEnvironmentValues _instance =
      FFDevEnvironmentValues._internal();

  factory FFDevEnvironmentValues() {
    return _instance;
  }

  FFDevEnvironmentValues._internal();

// CONSTRUTOR PARA TESTES
  FFDevEnvironmentValues.test({
    required String buildEnv,
    required String featureFlagsJson,
    required String appName,
  })  : _buildEnv = buildEnv,
        _featureFlagsJson = featureFlagsJson,
        _appName = appName,
        _initialized = true;
//------------------------------

  bool _initialized = false;

  String _buildEnv = 'prod';
  String _featureFlagsJson = '{}';
  String _appName = 'App Viagens';

  /// Deve ser chamado no bootstrap da aplicação (antes de usar os getters).
  Future<void> initialize() async {
    if (_initialized) return;

    try {
      final String response =
          await rootBundle.loadString(environmentValuesPath);
      final data = json.decode(response) as Map<String, dynamic>;

      _buildEnv = (data['buildEnv'] ?? 'prod').toString();
      _featureFlagsJson = (data['featureFlagsJson'] ?? '{}').toString();
      _appName = (data['appName'] ?? 'App Viagens').toString();

      _initialized = true;
    } catch (e) {
      // Fallback seguro (pode logar em GA4 / Crashlytics também)
      print('Error loading environment values: $e');
    }
  }

  // Getters originais (compatíveis com o código já existente)
  String get buildEnv => _buildEnv;
  String get featureFlagsJson => _featureFlagsJson;
  String get appName => _appName;

  // Helpers úteis para o resto do código
  bool get isDev =>
      _buildEnv.toLowerCase() == 'dev' || _buildEnv.toLowerCase() == 'development';

  bool get isProd =>
      _buildEnv.toLowerCase() == 'prod' || _buildEnv.toLowerCase() == 'production';

  /// Converte o featureFlagsJson em Map para uso mais fácil:
  ///
  /// Ex:
  ///   final flags = env.featureFlags;
  ///   final showDevMenu = flags['showDevMenuPage'] == true;
  Map<String, dynamic> get featureFlags {
    try {
      return json.decode(_featureFlagsJson) as Map<String, dynamic>;
    } catch (_) {
      return <String, dynamic>{};
    }
  }

  bool get showDebugBanner =>
      featureFlags['showDebugBanner'] == true;

  bool get showDevMenuPage =>
      featureFlags['showDevMenuPage'] == true;
}
