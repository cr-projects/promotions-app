import '../database.dart';

class BrandViewTable extends SupabaseTable<BrandViewRow> {
  @override
  String get tableName => 'brand_view';

  @override
  BrandViewRow createRow(Map<String, dynamic> data) => BrandViewRow(data);
}

class BrandViewRow extends SupabaseDataRow {
  BrandViewRow(super.data);

  @override
  SupabaseTable get table => BrandViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  int? get enterpriseTypeId => getField<int>('enterprise_type_id');
  set enterpriseTypeId(int? value) =>
      setField<int>('enterprise_type_id', value);

  String? get enterpriseTypeName => getField<String>('enterprise_type_name');
  set enterpriseTypeName(String? value) =>
      setField<String>('enterprise_type_name', value);
}
