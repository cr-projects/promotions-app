import '../database.dart';

class RegionTable extends SupabaseTable<RegionRow> {
  @override
  String get tableName => 'region';

  @override
  RegionRow createRow(Map<String, dynamic> data) => RegionRow(data);
}

class RegionRow extends SupabaseDataRow {
  RegionRow(super.data);

  @override
  SupabaseTable get table => RegionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  int get countryId => getField<int>('country_id')!;
  set countryId(int value) => setField<int>('country_id', value);
}
