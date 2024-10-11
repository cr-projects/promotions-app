import '../database.dart';

class RelUserPaymentMediaTable extends SupabaseTable<RelUserPaymentMediaRow> {
  @override
  String get tableName => 'rel_user_payment_media';

  @override
  RelUserPaymentMediaRow createRow(Map<String, dynamic> data) =>
      RelUserPaymentMediaRow(data);
}

class RelUserPaymentMediaRow extends SupabaseDataRow {
  RelUserPaymentMediaRow(super.data);

  @override
  SupabaseTable get table => RelUserPaymentMediaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);

  int get paymentMediaId => getField<int>('payment_media_id')!;
  set paymentMediaId(int value) => setField<int>('payment_media_id', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);
}
