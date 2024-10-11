import '../database.dart';

class BrandTable extends SupabaseTable<BrandRow> {
  @override
  String get tableName => 'brand';

  @override
  BrandRow createRow(Map<String, dynamic> data) => BrandRow(data);
}

class BrandRow extends SupabaseDataRow {
  BrandRow(super.data);

  @override
  SupabaseTable get table => BrandTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  int? get enterpriseTypeId => getField<int>('enterprise_type_id');
  set enterpriseTypeId(int? value) =>
      setField<int>('enterprise_type_id', value);
}
