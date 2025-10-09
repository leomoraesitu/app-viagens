import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BackgroundsRecord extends FirestoreRecord {
  BackgroundsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "imgUrl" field.
  String? _imgUrl;
  String get imgUrl => _imgUrl ?? '';
  bool hasImgUrl() => _imgUrl != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _imgUrl = snapshotData['imgUrl'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('backgrounds')
          : FirebaseFirestore.instance.collectionGroup('backgrounds');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('backgrounds').doc(id);

  static Stream<BackgroundsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BackgroundsRecord.fromSnapshot(s));

  static Future<BackgroundsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BackgroundsRecord.fromSnapshot(s));

  static BackgroundsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BackgroundsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BackgroundsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BackgroundsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BackgroundsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BackgroundsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBackgroundsRecordData({
  String? imgUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imgUrl': imgUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class BackgroundsRecordDocumentEquality implements Equality<BackgroundsRecord> {
  const BackgroundsRecordDocumentEquality();

  @override
  bool equals(BackgroundsRecord? e1, BackgroundsRecord? e2) {
    return e1?.imgUrl == e2?.imgUrl;
  }

  @override
  int hash(BackgroundsRecord? e) => const ListEquality().hash([e?.imgUrl]);

  @override
  bool isValidKey(Object? o) => o is BackgroundsRecord;
}
