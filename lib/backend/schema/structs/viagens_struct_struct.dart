// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ViagensStructStruct extends FFFirebaseStruct {
  ViagensStructStruct({
    DocumentReference? viagensStruct,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _viagensStruct = viagensStruct,
        super(firestoreUtilData);

  // "viagensStruct" field.
  DocumentReference? _viagensStruct;
  DocumentReference? get viagensStruct => _viagensStruct;
  set viagensStruct(DocumentReference? val) => _viagensStruct = val;

  bool hasViagensStruct() => _viagensStruct != null;

  static ViagensStructStruct fromMap(Map<String, dynamic> data) =>
      ViagensStructStruct(
        viagensStruct: data['viagensStruct'] as DocumentReference?,
      );

  static ViagensStructStruct? maybeFromMap(dynamic data) => data is Map
      ? ViagensStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'viagensStruct': _viagensStruct,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'viagensStruct': serializeParam(
          _viagensStruct,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ViagensStructStruct fromSerializableMap(Map<String, dynamic> data) =>
      ViagensStructStruct(
        viagensStruct: deserializeParam(
          data['viagensStruct'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['viagens'],
        ),
      );

  @override
  String toString() => 'ViagensStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ViagensStructStruct && viagensStruct == other.viagensStruct;
  }

  @override
  int get hashCode => const ListEquality().hash([viagensStruct]);
}

ViagensStructStruct createViagensStructStruct({
  DocumentReference? viagensStruct,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ViagensStructStruct(
      viagensStruct: viagensStruct,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ViagensStructStruct? updateViagensStructStruct(
  ViagensStructStruct? viagensStructStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    viagensStructStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addViagensStructStructData(
  Map<String, dynamic> firestoreData,
  ViagensStructStruct? viagensStructStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (viagensStructStruct == null) {
    return;
  }
  if (viagensStructStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && viagensStructStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final viagensStructStructData =
      getViagensStructFirestoreData(viagensStructStruct, forFieldValue);
  final nestedData =
      viagensStructStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      viagensStructStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getViagensStructFirestoreData(
  ViagensStructStruct? viagensStructStruct, [
  bool forFieldValue = false,
]) {
  if (viagensStructStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(viagensStructStruct.toMap());

  // Add any Firestore field values
  viagensStructStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getViagensStructListFirestoreData(
  List<ViagensStructStruct>? viagensStructStructs,
) =>
    viagensStructStructs
        ?.map((e) => getViagensStructFirestoreData(e, true))
        .toList() ??
    [];
