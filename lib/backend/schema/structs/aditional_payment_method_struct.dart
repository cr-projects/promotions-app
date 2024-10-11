// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AditionalPaymentMethodStruct extends FFFirebaseStruct {
  AditionalPaymentMethodStruct({
    int? id,
    DateTime? createdAt,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _createdAt = createdAt,
        _name = name,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static AditionalPaymentMethodStruct fromMap(Map<String, dynamic> data) =>
      AditionalPaymentMethodStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as DateTime?,
        name: data['name'] as String?,
      );

  static AditionalPaymentMethodStruct? maybeFromMap(dynamic data) => data is Map
      ? AditionalPaymentMethodStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static AditionalPaymentMethodStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AditionalPaymentMethodStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AditionalPaymentMethodStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AditionalPaymentMethodStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([id, createdAt, name]);
}

AditionalPaymentMethodStruct createAditionalPaymentMethodStruct({
  int? id,
  DateTime? createdAt,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AditionalPaymentMethodStruct(
      id: id,
      createdAt: createdAt,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AditionalPaymentMethodStruct? updateAditionalPaymentMethodStruct(
  AditionalPaymentMethodStruct? aditionalPaymentMethod, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    aditionalPaymentMethod
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAditionalPaymentMethodStructData(
  Map<String, dynamic> firestoreData,
  AditionalPaymentMethodStruct? aditionalPaymentMethod,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (aditionalPaymentMethod == null) {
    return;
  }
  if (aditionalPaymentMethod.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      aditionalPaymentMethod.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final aditionalPaymentMethodData = getAditionalPaymentMethodFirestoreData(
      aditionalPaymentMethod, forFieldValue);
  final nestedData =
      aditionalPaymentMethodData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      aditionalPaymentMethod.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAditionalPaymentMethodFirestoreData(
  AditionalPaymentMethodStruct? aditionalPaymentMethod, [
  bool forFieldValue = false,
]) {
  if (aditionalPaymentMethod == null) {
    return {};
  }
  final firestoreData = mapToFirestore(aditionalPaymentMethod.toMap());

  // Add any Firestore field values
  aditionalPaymentMethod.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAditionalPaymentMethodListFirestoreData(
  List<AditionalPaymentMethodStruct>? aditionalPaymentMethods,
) =>
    aditionalPaymentMethods
        ?.map((e) => getAditionalPaymentMethodFirestoreData(e, true))
        .toList() ??
    [];
