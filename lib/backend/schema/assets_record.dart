import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssetsRecord extends FirestoreRecord {
  AssetsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "images" field.
  DocumentReference? _images;
  DocumentReference? get images => _images;
  bool hasImages() => _images != null;

  void _initializeFields() {
    _images = snapshotData['images'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assets');

  static Stream<AssetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssetsRecord.fromSnapshot(s));

  static Future<AssetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssetsRecord.fromSnapshot(s));

  static AssetsRecord fromSnapshot(DocumentSnapshot snapshot) => AssetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssetsRecordData({
  DocumentReference? images,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'images': images,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssetsRecordDocumentEquality implements Equality<AssetsRecord> {
  const AssetsRecordDocumentEquality();

  @override
  bool equals(AssetsRecord? e1, AssetsRecord? e2) {
    return e1?.images == e2?.images;
  }

  @override
  int hash(AssetsRecord? e) => const ListEquality().hash([e?.images]);

  @override
  bool isValidKey(Object? o) => o is AssetsRecord;
}
