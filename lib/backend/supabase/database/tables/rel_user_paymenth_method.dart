import '../database.dart';

class RelUserPaymenthMethodTable
    extends SupabaseTable<RelUserPaymenthMethodRow> {
  @override
  String get tableName => 'rel_user_paymenth_method';

  @override
  RelUserPaymenthMethodRow createRow(Map<String, dynamic> data) =>
      RelUserPaymenthMethodRow(data);
}

class RelUserPaymenthMethodRow extends SupabaseDataRow {
  RelUserPaymenthMethodRow(super.data);

  @override
  SupabaseTable get table => RelUserPaymenthMethodTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get paymentMethodId => getField<int>('payment_method_id');
  set paymentMethodId(int? value) => setField<int>('payment_method_id', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);
}
