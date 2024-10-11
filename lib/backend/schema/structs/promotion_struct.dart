// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PromotionStruct extends FFFirebaseStruct {
  PromotionStruct({
    String? promotionName,
    int? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _promotionName = promotionName,
        _id = id,
        super(firestoreUtilData);

  // "promotionName" field.
  String? _promotionName;
  String get promotionName => _promotionName ?? '';
  set promotionName(String? val) => _promotionName = val;

  bool hasPromotionName() => _promotionName != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static PromotionStruct fromMap(Map<String, dynamic> data) => PromotionStruct(
        promotionName: data['promotionName'] as String?,
        id: castToType<int>(data['id']),
      );

  static PromotionStruct? maybeFromMap(dynamic data) => data is Map
      ? PromotionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'promotionName': _promotionName,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'promotionName': serializeParam(
          _promotionName,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static PromotionStruct fromSerializableMap(Map<String, dynamic> data) =>
      PromotionStruct(
        promotionName: deserializeParam(
          data['promotionName'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PromotionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PromotionStruct &&
        promotionName == other.promotionName &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([promotionName, id]);
}

PromotionStruct createPromotionStruct({
  String? promotionName,
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PromotionStruct(
      promotionName: promotionName,
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PromotionStruct? updatePromotionStruct(
  PromotionStruct? promotion, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    promotion
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPromotionStructData(
  Map<String, dynamic> firestoreData,
  PromotionStruct? promotion,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (promotion == null) {
    return;
  }
  if (promotion.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && promotion.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final promotionData = getPromotionFirestoreData(promotion, forFieldValue);
  final nestedData = promotionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = promotion.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPromotionFirestoreData(
  PromotionStruct? promotion, [
  bool forFieldValue = false,
]) {
  if (promotion == null) {
    return {};
  }
  final firestoreData = mapToFirestore(promotion.toMap());

  // Add any Firestore field values
  promotion.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPromotionListFirestoreData(
  List<PromotionStruct>? promotions,
) =>
    promotions?.map((e) => getPromotionFirestoreData(e, true)).toList() ?? [];
