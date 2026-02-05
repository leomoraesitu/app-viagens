import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PlacesAutocompleteProxyCall {
  static Future<ApiCallResponse> call({
    String? input = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PlacesAutocompleteProxy',
      apiUrl:
          'https://southamerica-east1-appviagens-6f9bc.cloudfunctions.net/placesAutocomplete',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'input': input,
        'languageCode': "pt-BR",
        'limit': 5,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PlacesDetailsProxyCall {
  static Future<ApiCallResponse> call({
    String? placeId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PlacesDetailsProxy',
      apiUrl:
          'https://southamerica-east1-appviagens-6f9bc.cloudfunctions.net/placesDetails',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'placeId': placeId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PlacesAutocompleteProxyProdCall {
  static Future<ApiCallResponse> call({
    String? input = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PlacesAutocompleteProxyProd',
      apiUrl:
          'https://southamerica-east1-appviagens2-92cbf.cloudfunctions.net/placesAutocomplete',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'input': input,
        'languageCode': "pt-BR",
        'limit': 5,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PlacesDetailsProxyProdCall {
  static Future<ApiCallResponse> call({
    String? placeId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PlacesDetailsProxyProd',
      apiUrl:
          'https://southamerica-east1-appviagens2-92cbf.cloudfunctions.net/placesDetails',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'placeId': placeId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
