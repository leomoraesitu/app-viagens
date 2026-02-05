// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PlaceItemStruct extends FFFirebaseStruct {
  PlaceItemStruct({
    String? description,
    String? placeId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _description = description,
        _placeId = placeId,
        super(firestoreUtilData);

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "placeId" field.
  String? _placeId;
  String get placeId => _placeId ?? '';
  set placeId(String? val) => _placeId = val;

  bool hasPlaceId() => _placeId != null;

  static PlaceItemStruct fromMap(Map<String, dynamic> data) => PlaceItemStruct(
        description: data['description'] as String?,
        placeId: data['placeId'] as String?,
      );

  static PlaceItemStruct? maybeFromMap(dynamic data) => data is Map
      ? PlaceItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'description': _description,
        'placeId': _placeId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'placeId': serializeParam(
          _placeId,
          ParamType.String,
        ),
      }.withoutNulls;

  static PlaceItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlaceItemStruct(
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        placeId: deserializeParam(
          data['placeId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PlaceItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlaceItemStruct &&
        description == other.description &&
        placeId == other.placeId;
  }

  @override
  int get hashCode => const ListEquality().hash([description, placeId]);
}

PlaceItemStruct createPlaceItemStruct({
  String? description,
  String? placeId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlaceItemStruct(
      description: description,
      placeId: placeId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PlaceItemStruct? updatePlaceItemStruct(
  PlaceItemStruct? placeItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    placeItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPlaceItemStructData(
  Map<String, dynamic> firestoreData,
  PlaceItemStruct? placeItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (placeItem == null) {
    return;
  }
  if (placeItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && placeItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final placeItemData = getPlaceItemFirestoreData(placeItem, forFieldValue);
  final nestedData = placeItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = placeItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPlaceItemFirestoreData(
  PlaceItemStruct? placeItem, [
  bool forFieldValue = false,
]) {
  if (placeItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(placeItem.toMap());

  // Add any Firestore field values
  placeItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlaceItemListFirestoreData(
  List<PlaceItemStruct>? placeItems,
) =>
    placeItems?.map((e) => getPlaceItemFirestoreData(e, true)).toList() ?? [];
