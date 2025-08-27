// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BorderStructStruct extends FFFirebaseStruct {
  BorderStructStruct({
    Color? boderColor,
    int? borderWidth,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _boderColor = boderColor,
        _borderWidth = borderWidth,
        super(firestoreUtilData);

  // "boderColor" field.
  Color? _boderColor;
  Color? get boderColor => _boderColor;
  set boderColor(Color? val) => _boderColor = val;

  bool hasBoderColor() => _boderColor != null;

  // "borderWidth" field.
  int? _borderWidth;
  int get borderWidth => _borderWidth ?? 2;
  set borderWidth(int? val) => _borderWidth = val;

  void incrementBorderWidth(int amount) => borderWidth = borderWidth + amount;

  bool hasBorderWidth() => _borderWidth != null;

  static BorderStructStruct fromMap(Map<String, dynamic> data) =>
      BorderStructStruct(
        boderColor: getSchemaColor(data['boderColor']),
        borderWidth: castToType<int>(data['borderWidth']),
      );

  static BorderStructStruct? maybeFromMap(dynamic data) => data is Map
      ? BorderStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'boderColor': _boderColor,
        'borderWidth': _borderWidth,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'boderColor': serializeParam(
          _boderColor,
          ParamType.Color,
        ),
        'borderWidth': serializeParam(
          _borderWidth,
          ParamType.int,
        ),
      }.withoutNulls;

  static BorderStructStruct fromSerializableMap(Map<String, dynamic> data) =>
      BorderStructStruct(
        boderColor: deserializeParam(
          data['boderColor'],
          ParamType.Color,
          false,
        ),
        borderWidth: deserializeParam(
          data['borderWidth'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BorderStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BorderStructStruct &&
        boderColor == other.boderColor &&
        borderWidth == other.borderWidth;
  }

  @override
  int get hashCode => const ListEquality().hash([boderColor, borderWidth]);
}

BorderStructStruct createBorderStructStruct({
  Color? boderColor,
  int? borderWidth,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BorderStructStruct(
      boderColor: boderColor,
      borderWidth: borderWidth,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BorderStructStruct? updateBorderStructStruct(
  BorderStructStruct? borderStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    borderStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBorderStructStructData(
  Map<String, dynamic> firestoreData,
  BorderStructStruct? borderStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (borderStruct == null) {
    return;
  }
  if (borderStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && borderStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final borderStructData =
      getBorderStructFirestoreData(borderStruct, forFieldValue);
  final nestedData =
      borderStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = borderStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBorderStructFirestoreData(
  BorderStructStruct? borderStruct, [
  bool forFieldValue = false,
]) {
  if (borderStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(borderStruct.toMap());

  // Add any Firestore field values
  borderStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBorderStructListFirestoreData(
  List<BorderStructStruct>? borderStructs,
) =>
    borderStructs?.map((e) => getBorderStructFirestoreData(e, true)).toList() ??
    [];
