import '../database.dart';

class PaymentMediaViewTable extends SupabaseTable<PaymentMediaViewRow> {
  @override
  String get tableName => 'payment_media_view';

  @override
  PaymentMediaViewRow createRow(Map<String, dynamic> data) =>
      PaymentMediaViewRow(data);
}

class PaymentMediaViewRow extends SupabaseDataRow {
  PaymentMediaViewRow(super.data);

  @override
  SupabaseTable get table => PaymentMediaViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get paymentMediaTypeId => getField<int>('payment_media_type_id');
  set paymentMediaTypeId(int? value) =>
      setField<int>('payment_media_type_id', value);

  String? get paymentMediaTypeName =>
      getField<String>('payment_media_type_name');
  set paymentMediaTypeName(String? value) =>
      setField<String>('payment_media_type_name', value);

  int? get cardId => getField<int>('card_id');
  set cardId(int? value) => setField<int>('card_id', value);

  String? get cardName => getField<String>('card_name');
  set cardName(String? value) => setField<String>('card_name', value);

  int? get finantialEntityId => getField<int>('finantial_entity_id');
  set finantialEntityId(int? value) =>
      setField<int>('finantial_entity_id', value);

  String? get finantialEntityName => getField<String>('finantial_entity_name');
  set finantialEntityName(String? value) =>
      setField<String>('finantial_entity_name', value);

  int? get finantialEntityTypeId => getField<int>('finantial_entity_type_id');
  set finantialEntityTypeId(int? value) =>
      setField<int>('finantial_entity_type_id', value);

  String? get finantialEntityTypeName =>
      getField<String>('finantial_entity_type_name');
  set finantialEntityTypeName(String? value) =>
      setField<String>('finantial_entity_type_name', value);
}
