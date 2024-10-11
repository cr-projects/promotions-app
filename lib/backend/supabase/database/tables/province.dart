import '../database.dart';

class ProvinceTable extends SupabaseTable<ProvinceRow> {
  @override
  String get tableName => 'province';

  @override
  ProvinceRow createRow(Map<String, dynamic> data) => ProvinceRow(data);
}

class ProvinceRow extends SupabaseDataRow {
  ProvinceRow(super.data);

  @override
  SupabaseTable get table => ProvinceTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  int get countryId => getField<int>('country_id')!;
  set countryId(int value) => setField<int>('country_id', value);

  int? get regionId => getField<int>('region_id');
  set regionId(int? value) => setField<int>('region_id', value);
}
