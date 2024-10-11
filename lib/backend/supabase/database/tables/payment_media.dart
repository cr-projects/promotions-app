import '../database.dart';

class PaymentMediaTable extends SupabaseTable<PaymentMediaRow> {
  @override
  String get tableName => 'payment_media';

  @override
  PaymentMediaRow createRow(Map<String, dynamic> data) => PaymentMediaRow(data);
}

class PaymentMediaRow extends SupabaseDataRow {
  PaymentMediaRow(super.data);

  @override
  SupabaseTable get table => PaymentMediaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get paymentMediaTypeId => getField<int>('payment_media_type_id')!;
  set paymentMediaTypeId(int value) =>
      setField<int>('payment_media_type_id', value);

  int get finantialEntityId => getField<int>('finantial_entity_id')!;
  set finantialEntityId(int value) =>
      setField<int>('finantial_entity_id', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  int get cardId => getField<int>('card_id')!;
  set cardId(int value) => setField<int>('card_id', value);
}
