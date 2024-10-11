// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromotionsStruct extends FFFirebaseStruct {
  PromotionsStruct({
    List<PromotionStruct>? promotions,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _promotions = promotions,
        super(firestoreUtilData);

  // "promotions" field.
  List<PromotionStruct>? _promotions;
  List<PromotionStruct> get promotions => _promotions ?? const [];
  set promotions(List<PromotionStruct>? val) => _promotions = val;

  void updatePromotions(Function(List<PromotionStruct>) updateFn) {
    updateFn(_promotions ??= []);
  }

  bool hasPromotions() => _promotions != null;

  static PromotionsStruct fromMap(Map<String, dynamic> data) =>
      PromotionsStruct(
        promotions: getStructList(
          data['promotions'],
          PromotionStruct.fromMap,
        ),
      );

  static PromotionsStruct? maybeFromMap(dynamic data) => data is Map
      ? PromotionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'promotions': _promotions?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'promotions': serializeParam(
          _promotions,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static PromotionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PromotionsStruct(
        promotions: deserializeStructParam<PromotionStruct>(
          data['promotions'],
          ParamType.DataStruct,
          true,
          structBuilder: PromotionStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PromotionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PromotionsStruct &&
        listEquality.equals(promotions, other.promotions);
  }

  @override
  int get hashCode => const ListEquality().hash([promotions]);
}

PromotionsStruct createPromotionsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PromotionsStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PromotionsStruct? updatePromotionsStruct(
  PromotionsStruct? promotionsStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    promotionsStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPromotionsStructData(
  Map<String, dynamic> firestoreData,
  PromotionsStruct? promotionsStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (promotionsStruct == null) {
    return;
  }
  if (promotionsStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && promotionsStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final promotionsStructData =
      getPromotionsFirestoreData(promotionsStruct, forFieldValue);
  final nestedData =
      promotionsStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = promotionsStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPromotionsFirestoreData(
  PromotionsStruct? promotionsStruct, [
  bool forFieldValue = false,
]) {
  if (promotionsStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(promotionsStruct.toMap());

  // Add any Firestore field values
  promotionsStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPromotionsListFirestoreData(
  List<PromotionsStruct>? promotionsStructs,
) =>
    promotionsStructs
        ?.map((e) => getPromotionsFirestoreData(e, true))
        .toList() ??
    [];
