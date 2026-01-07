import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

import '../../environment_values.dart';

/// Carrega dinamicamente o arquivo firebase_dev.json ou firebase_prod.json
Future<Map<String, dynamic>> _loadFirebaseJson(String buildEnv) async {
  final env = buildEnv.toLowerCase();
  final isDev = env == 'dev' || env == 'development';

  // Caminho correto dos assets (conforme seu projeto)
  final String filePath = isDev
      ? 'assets/firebase/firebase_dev.json'
      : 'assets/firebase/firebase_prod.json';

  try {
    final jsonStr = await rootBundle.loadString(filePath);
    return json.decode(jsonStr) as Map<String, dynamic>;
  } catch (e) {
    print('Erro carregando arquivo Firebase ($filePath): $e');
    rethrow;
  }
}

/// Inicializa o Firebase usando ambiente Dev/Prod escolhido no environment.json
Future initFirebase() async {
  // Obtém o ambiente carregado no main.dart
  final env = FFDevEnvironmentValues();

  // No mobile, usamos google-services.json normalmente
  if (!kIsWeb) {
    await Firebase.initializeApp();
    return;
  }

  // Para WEB → usar firebase_dev.json ou firebase_prod.json
  final firebaseJson = await _loadFirebaseJson(env.buildEnv);

  final options = FirebaseOptions(
    apiKey: firebaseJson['apiKey'],
    authDomain: firebaseJson['authDomain'],
    projectId: firebaseJson['projectId'],
    storageBucket: firebaseJson['storageBucket'],
    messagingSenderId: firebaseJson['messagingSenderId'],
    appId: firebaseJson['appId'],
    measurementId: firebaseJson['measurementId'],
  );

  await Firebase.initializeApp(options: options);
}
