import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ViagensRecord extends FirestoreRecord {
  ViagensRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "imgUrl" field.
  String? _imgUrl;
  String get imgUrl => _imgUrl ?? '';
  bool hasImgUrl() => _imgUrl != null;

  // "vontade" field.
  int? _vontade;
  int get vontade => _vontade ?? 0;
  bool hasVontade() => _vontade != null;

  // "visitado" field.
  bool? _visitado;
  bool get visitado => _visitado ?? false;
  bool hasVisitado() => _visitado != null;

  // "investimento" field.
  int? _investimento;
  int get investimento => _investimento ?? 0;
  bool hasInvestimento() => _investimento != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "pdfPath" field.
  String? _pdfPath;
  String get pdfPath => _pdfPath ?? '';
  bool hasPdfPath() => _pdfPath != null;

  // "locLatLong" field.
  LatLng? _locLatLong;
  LatLng? get locLatLong => _locLatLong;
  bool hasLocLatLong() => _locLatLong != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _imgUrl = snapshotData['imgUrl'] as String?;
    _vontade = castToType<int>(snapshotData['vontade']);
    _visitado = snapshotData['visitado'] as bool?;
    _investimento = castToType<int>(snapshotData['investimento']);
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _pdfPath = snapshotData['pdfPath'] as String?;
    _locLatLong = snapshotData['locLatLong'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('viagens');

  static Stream<ViagensRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ViagensRecord.fromSnapshot(s));

  static Future<ViagensRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ViagensRecord.fromSnapshot(s));

  static ViagensRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ViagensRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ViagensRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ViagensRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ViagensRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ViagensRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createViagensRecordData({
  String? nome,
  String? descricao,
  String? imgUrl,
  int? vontade,
  bool? visitado,
  int? investimento,
  DocumentReference? userRef,
  String? pdfPath,
  LatLng? locLatLong,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'descricao': descricao,
      'imgUrl': imgUrl,
      'vontade': vontade,
      'visitado': visitado,
      'investimento': investimento,
      'userRef': userRef,
      'pdfPath': pdfPath,
      'locLatLong': locLatLong,
    }.withoutNulls,
  );

  return firestoreData;
}

class ViagensRecordDocumentEquality implements Equality<ViagensRecord> {
  const ViagensRecordDocumentEquality();

  @override
  bool equals(ViagensRecord? e1, ViagensRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.descricao == e2?.descricao &&
        e1?.imgUrl == e2?.imgUrl &&
        e1?.vontade == e2?.vontade &&
        e1?.visitado == e2?.visitado &&
        e1?.investimento == e2?.investimento &&
        e1?.userRef == e2?.userRef &&
        e1?.pdfPath == e2?.pdfPath &&
        e1?.locLatLong == e2?.locLatLong;
  }

  @override
  int hash(ViagensRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.descricao,
        e?.imgUrl,
        e?.vontade,
        e?.visitado,
        e?.investimento,
        e?.userRef,
        e?.pdfPath,
        e?.locLatLong
      ]);

  @override
  bool isValidKey(Object? o) => o is ViagensRecord;
}
