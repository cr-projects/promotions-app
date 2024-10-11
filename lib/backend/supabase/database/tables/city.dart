import '../database.dart';

class CityTable extends SupabaseTable<CityRow> {
  @override
  String get tableName => 'city';

  @override
  CityRow createRow(Map<String, dynamic> data) => CityRow(data);
}

class CityRow extends SupabaseDataRow {
  CityRow(super.data);

  @override
  SupabaseTable get table => CityTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  String? get postalCode => getField<String>('postal_code');
  set postalCode(String? value) => setField<String>('postal_code', value);

  int? get districtId => getField<int>('district_id');
  set districtId(int? value) => setField<int>('district_id', value);
}
