import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DaysRecord extends FirestoreRecord {
  DaysRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  int? _uid;
  int get uid => _uid ?? 0;
  bool hasUid() => _uid != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  void _initializeFields() {
    _uid = castToType<int>(snapshotData['uid']);
    _name = snapshotData['name'] as String?;
    _active = snapshotData['active'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('days');

  static Stream<DaysRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DaysRecord.fromSnapshot(s));

  static Future<DaysRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DaysRecord.fromSnapshot(s));

  static DaysRecord fromSnapshot(DocumentSnapshot snapshot) => DaysRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DaysRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DaysRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DaysRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DaysRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDaysRecordData({
  int? uid,
  String? name,
  bool? active,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'name': name,
      'active': active,
    }.withoutNulls,
  );

  return firestoreData;
}

class DaysRecordDocumentEquality implements Equality<DaysRecord> {
  const DaysRecordDocumentEquality();

  @override
  bool equals(DaysRecord? e1, DaysRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.name == e2?.name &&
        e1?.active == e2?.active;
  }

  @override
  int hash(DaysRecord? e) =>
      const ListEquality().hash([e?.uid, e?.name, e?.active]);

  @override
  bool isValidKey(Object? o) => o is DaysRecord;
}
