import '../database.dart';

class AditionalDiscountTypesTable
    extends SupabaseTable<AditionalDiscountTypesRow> {
  @override
  String get tableName => 'aditional_discount_types';

  @override
  AditionalDiscountTypesRow createRow(Map<String, dynamic> data) =>
      AditionalDiscountTypesRow(data);
}

class AditionalDiscountTypesRow extends SupabaseDataRow {
  AditionalDiscountTypesRow(super.data);

  @override
  SupabaseTable get table => AditionalDiscountTypesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);
}
