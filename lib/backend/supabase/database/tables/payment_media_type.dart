import '../database.dart';

class PaymentMediaTypeTable extends SupabaseTable<PaymentMediaTypeRow> {
  @override
  String get tableName => 'payment_media_type';

  @override
  PaymentMediaTypeRow createRow(Map<String, dynamic> data) =>
      PaymentMediaTypeRow(data);
}

class PaymentMediaTypeRow extends SupabaseDataRow {
  PaymentMediaTypeRow(super.data);

  @override
  SupabaseTable get table => PaymentMediaTypeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);
}
