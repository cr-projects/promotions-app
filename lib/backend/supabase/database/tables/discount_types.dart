import '../database.dart';

class DiscountTypesTable extends SupabaseTable<DiscountTypesRow> {
  @override
  String get tableName => 'discount_types';

  @override
  DiscountTypesRow createRow(Map<String, dynamic> data) =>
      DiscountTypesRow(data);
}

class DiscountTypesRow extends SupabaseDataRow {
  DiscountTypesRow(super.data);

  @override
  SupabaseTable get table => DiscountTypesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get sign => getField<String>('sign');
  set sign(String? value) => setField<String>('sign', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);
}
