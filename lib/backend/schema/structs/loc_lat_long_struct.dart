// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class LocLatLongStruct extends FFFirebaseStruct {
  LocLatLongStruct({
    double? locLat,
    double? locLong,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _locLat = locLat,
        _locLong = locLong,
        super(firestoreUtilData);

  // "locLat" field.
  double? _locLat;
  double get locLat => _locLat ?? 0.0;
  set locLat(double? val) => _locLat = val;

  void incrementLocLat(double amount) => locLat = locLat + amount;

  bool hasLocLat() => _locLat != null;

  // "locLong" field.
  double? _locLong;
  double get locLong => _locLong ?? 0.0;
  set locLong(double? val) => _locLong = val;

  void incrementLocLong(double amount) => locLong = locLong + amount;

  bool hasLocLong() => _locLong != null;

  static LocLatLongStruct fromMap(Map<String, dynamic> data) =>
      LocLatLongStruct(
        locLat: castToType<double>(data['locLat']),
        locLong: castToType<double>(data['locLong']),
      );

  static LocLatLongStruct? maybeFromMap(dynamic data) => data is Map
      ? LocLatLongStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'locLat': _locLat,
        'locLong': _locLong,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'locLat': serializeParam(
          _locLat,
          ParamType.double,
        ),
        'locLong': serializeParam(
          _locLong,
          ParamType.double,
        ),
      }.withoutNulls;

  static LocLatLongStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocLatLongStruct(
        locLat: deserializeParam(
          data['locLat'],
          ParamType.double,
          false,
        ),
        locLong: deserializeParam(
          data['locLong'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'LocLatLongStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LocLatLongStruct &&
        locLat == other.locLat &&
        locLong == other.locLong;
  }

  @override
  int get hashCode => const ListEquality().hash([locLat, locLong]);
}

LocLatLongStruct createLocLatLongStruct({
  double? locLat,
  double? locLong,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LocLatLongStruct(
      locLat: locLat,
      locLong: locLong,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LocLatLongStruct? updateLocLatLongStruct(
  LocLatLongStruct? locLatLong, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    locLatLong
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLocLatLongStructData(
  Map<String, dynamic> firestoreData,
  LocLatLongStruct? locLatLong,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (locLatLong == null) {
    return;
  }
  if (locLatLong.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && locLatLong.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final locLatLongData = getLocLatLongFirestoreData(locLatLong, forFieldValue);
  final nestedData = locLatLongData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = locLatLong.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLocLatLongFirestoreData(
  LocLatLongStruct? locLatLong, [
  bool forFieldValue = false,
]) {
  if (locLatLong == null) {
    return {};
  }
  final firestoreData = mapToFirestore(locLatLong.toMap());

  // Add any Firestore field values
  locLatLong.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLocLatLongListFirestoreData(
  List<LocLatLongStruct>? locLatLongs,
) =>
    locLatLongs?.map((e) => getLocLatLongFirestoreData(e, true)).toList() ?? [];
