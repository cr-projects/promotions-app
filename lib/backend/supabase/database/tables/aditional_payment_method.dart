import '../database.dart';

class AditionalPaymentMethodTable
    extends SupabaseTable<AditionalPaymentMethodRow> {
  @override
  String get tableName => 'aditional_payment_method';

  @override
  AditionalPaymentMethodRow createRow(Map<String, dynamic> data) =>
      AditionalPaymentMethodRow(data);
}

class AditionalPaymentMethodRow extends SupabaseDataRow {
  AditionalPaymentMethodRow(super.data);

  @override
  SupabaseTable get table => AditionalPaymentMethodTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
